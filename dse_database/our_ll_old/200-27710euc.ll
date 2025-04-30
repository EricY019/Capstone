; ModuleID = './code/200-27710euc.c'
source_filename = "./code/200-27710euc.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"euc-kr.html\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"euc-cn.html\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"euc-tw.html\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"euc-jp.html\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"* Code set 0\00", align 1
@.str.6 = private unnamed_addr constant [273 x i8] c"<html lang=ko>\0A <head>\0A  <meta http-equiv=\22Content-Type\22 content=\22text/html;charset=euc-kr\22>\0A  <title>EUC-KR</title>\0A  <style>.unused { background: #ccc; } table { float: left; }</style>\0A </head>\0A <body>\0A  <table><caption>Code set 0: ASCII/KS-Roman</caption>\0A   <tr><th>  \00", align 1
@.str.7 = private unnamed_addr constant [269 x i8] c"<html lang=\22zh-cn\22>\0A <head>\0A  <meta http-equiv=\22Content-Type\22 content=\22text/html;charset=euc-cn\22>\0A  <title>EUC-CN</title>\0A  <style>.unused { background: #ccc; } table { float: left; }</style>\0A </head>\0A <body>\0A  <table><caption>Code set 0: ASCII</caption>\0A   <tr><th>  \00", align 1
@.str.8 = private unnamed_addr constant [279 x i8] c"<html lang=\22zh-tw\22>\0A <head>\0A  <meta http-equiv=\22Content-Type\22 content=\22text/html;charset=euc-tw\22>\0A  <title>EUC-TW</title>\0A  <style>.unused { background: #ccc; } table { float: left; }</style>\0A </head>\0A <body>\0A  <table><caption>Code set 0: ASCII/CNS-Roman</caption>\0A   <tr><th>  \00", align 1
@.str.9 = private unnamed_addr constant [264 x i8] c"<html lang=ja>\0A <head>\0A  <meta http-equiv=\22Content-Type\22 content=\22text/html;charset=euc-jp\22>\0A  <title>EUC-JP</title>\0A  <style>.unused { background: #ccc; } table { float: left; }</style>\0A </head>\0A <body>\0A  <table><caption>Code set 0: ASCII</caption>\0A   <tr><th>  \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"<th>%X\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"\0A   <tr><th>%02X\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"<td>%c\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\0A  </table>\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"* Code set 1\00", align 1
@.str.15 = private unnamed_addr constant [75 x i8] c"  <table><caption>Code set 1: KS X 1001:1992 Row %X</caption>\0A   <tr><th> \00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"<td class=unused>&nbsp;\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"<td>%c%c\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"<td class=unused>&nbsp;\0A  </table>\0A\00", align 1
@.str.19 = private unnamed_addr constant [71 x i8] c"  <table><caption>Code set 1: GB 2312-80 Row %X</caption>\0A   <tr><th> \00", align 1
@.str.20 = private unnamed_addr constant [83 x i8] c"  <table><caption>Code set 1: CNS 11643-1992 Plane 1 Row %X</caption>\0A   <tr><th> \00", align 1
@.str.21 = private unnamed_addr constant [76 x i8] c"  <table><caption>Code set 1: JIS X 0208:1997 Row %X</caption>\0A   <tr><th> \00", align 1
@.str.22 = private unnamed_addr constant [24 x i8] c"* Code set 2 for EUC-TW\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"  <h2>Second byte %02X - Plane %d</h2>\0A\00", align 1
@.str.24 = private unnamed_addr constant [84 x i8] c"  <table><caption>Code set 2: CNS 11643-1992 Plane %d Row %X</caption>\0A   <tr><th> \00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"<td>\8E%c%c%c\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"* Code set 2 for EUC-JP\00", align 1
@.str.27 = private unnamed_addr constant [74 x i8] c"  <table><caption>Code set 2: Half-width katakana</caption>\0A   <tr><th>  \00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"<td>\8E%c\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"<td class=unused>&nbsp; \00", align 1
@.str.30 = private unnamed_addr constant [24 x i8] c"* Code set 3 for EUC-JP\00", align 1
@.str.31 = private unnamed_addr constant [76 x i8] c"  <table><caption>Code set 3: JIS X 0212:1990 Row %X</caption>\0A   <tr><th> \00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"<td>\8F%c%c\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"\0A </body>\0A</html>\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pl = alloca i32, align 4
  %kr = alloca ptr, align 8
  %cn = alloca ptr, align 8
  %tw = alloca ptr, align 8
  %jp = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %kr, align 8
  %call1 = call ptr @"\01_fopen"(ptr noundef @.str.2, ptr noundef @.str.1)
  store ptr %call1, ptr %cn, align 8
  %call2 = call ptr @"\01_fopen"(ptr noundef @.str.3, ptr noundef @.str.1)
  store ptr %call2, ptr %tw, align 8
  %call3 = call ptr @"\01_fopen"(ptr noundef @.str.4, ptr noundef @.str.1)
  store ptr %call3, ptr %jp, align 8
  %0 = load ptr, ptr %kr, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %cn, align 8
  %tobool4 = icmp ne ptr %1, null
  br i1 %tobool4, label %lor.lhs.false5, label %if.then

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %tw, align 8
  %tobool6 = icmp ne ptr %2, null
  br i1 %tobool6, label %lor.lhs.false7, label %if.then

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %3 = load ptr, ptr %jp, align 8
  %tobool8 = icmp ne ptr %3, null
  br i1 %tobool8, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %lor.lhs.false7
  %call9 = call i32 @puts(ptr noundef @.str.5)
  %4 = load ptr, ptr %kr, align 8
  %call10 = call i32 @"\01_fputs"(ptr noundef @.str.6, ptr noundef %4)
  %5 = load ptr, ptr %cn, align 8
  %call11 = call i32 @"\01_fputs"(ptr noundef @.str.7, ptr noundef %5)
  %6 = load ptr, ptr %tw, align 8
  %call12 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %6)
  %7 = load ptr, ptr %jp, align 8
  %call13 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %7)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %8, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %kr, align 8
  %10 = load i32, ptr %i, align 4
  %call14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.10, i32 noundef %10) #3
  %11 = load ptr, ptr %cn, align 8
  %12 = load i32, ptr %i, align 4
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef @.str.10, i32 noundef %12) #3
  %13 = load ptr, ptr %tw, align 8
  %14 = load i32, ptr %i, align 4
  %call16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.10, i32 noundef %14) #3
  %15 = load ptr, ptr %jp, align 8
  %16 = load i32, ptr %i, align 4
  %call17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.10, i32 noundef %16) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %17 = load i32, ptr %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 32, ptr %i, align 4
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc39, %for.end
  %18 = load i32, ptr %i, align 4
  %cmp19 = icmp slt i32 %18, 128
  br i1 %cmp19, label %for.body20, label %for.end41

for.body20:                                       ; preds = %for.cond18
  %19 = load i32, ptr %i, align 4
  %and = and i32 %19, 15
  %cmp21 = icmp eq i32 0, %and
  br i1 %cmp21, label %if.then22, label %if.end27

if.then22:                                        ; preds = %for.body20
  %20 = load ptr, ptr %kr, align 8
  %21 = load i32, ptr %i, align 4
  %call23 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.11, i32 noundef %21) #3
  %22 = load ptr, ptr %cn, align 8
  %23 = load i32, ptr %i, align 4
  %call24 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.11, i32 noundef %23) #3
  %24 = load ptr, ptr %tw, align 8
  %25 = load i32, ptr %i, align 4
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef @.str.11, i32 noundef %25) #3
  %26 = load ptr, ptr %jp, align 8
  %27 = load i32, ptr %i, align 4
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str.11, i32 noundef %27) #3
  br label %if.end27

if.end27:                                         ; preds = %if.then22, %for.body20
  %28 = load ptr, ptr %kr, align 8
  %29 = load i32, ptr %i, align 4
  %conv = trunc i32 %29 to i8
  %conv28 = sext i8 %conv to i32
  %call29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.12, i32 noundef %conv28) #3
  %30 = load ptr, ptr %cn, align 8
  %31 = load i32, ptr %i, align 4
  %conv30 = trunc i32 %31 to i8
  %conv31 = sext i8 %conv30 to i32
  %call32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.12, i32 noundef %conv31) #3
  %32 = load ptr, ptr %tw, align 8
  %33 = load i32, ptr %i, align 4
  %conv33 = trunc i32 %33 to i8
  %conv34 = sext i8 %conv33 to i32
  %call35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.12, i32 noundef %conv34) #3
  %34 = load ptr, ptr %jp, align 8
  %35 = load i32, ptr %i, align 4
  %conv36 = trunc i32 %35 to i8
  %conv37 = sext i8 %conv36 to i32
  %call38 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.12, i32 noundef %conv37) #3
  br label %for.inc39

for.inc39:                                        ; preds = %if.end27
  %36 = load i32, ptr %i, align 4
  %inc40 = add nsw i32 %36, 1
  store i32 %inc40, ptr %i, align 4
  br label %for.cond18, !llvm.loop !7

for.end41:                                        ; preds = %for.cond18
  %37 = load ptr, ptr %kr, align 8
  %call42 = call i32 @"\01_fputs"(ptr noundef @.str.13, ptr noundef %37)
  %38 = load ptr, ptr %cn, align 8
  %call43 = call i32 @"\01_fputs"(ptr noundef @.str.13, ptr noundef %38)
  %39 = load ptr, ptr %tw, align 8
  %call44 = call i32 @"\01_fputs"(ptr noundef @.str.13, ptr noundef %39)
  %40 = load ptr, ptr %jp, align 8
  %call45 = call i32 @"\01_fputs"(ptr noundef @.str.13, ptr noundef %40)
  %call46 = call i32 @puts(ptr noundef @.str.14)
  store i32 129, ptr %i, align 4
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc95, %for.end41
  %41 = load i32, ptr %i, align 4
  %cmp48 = icmp sle i32 %41, 160
  br i1 %cmp48, label %for.body50, label %for.end97

for.body50:                                       ; preds = %for.cond47
  %42 = load ptr, ptr %kr, align 8
  %43 = load i32, ptr %i, align 4
  %call51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef @.str.15, i32 noundef %43) #3
  store i32 0, ptr %j, align 4
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc57, %for.body50
  %44 = load i32, ptr %j, align 4
  %cmp53 = icmp slt i32 %44, 16
  br i1 %cmp53, label %for.body55, label %for.end59

for.body55:                                       ; preds = %for.cond52
  %45 = load ptr, ptr %kr, align 8
  %46 = load i32, ptr %j, align 4
  %call56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %45, ptr noundef @.str.10, i32 noundef %46) #3
  br label %for.inc57

for.inc57:                                        ; preds = %for.body55
  %47 = load i32, ptr %j, align 4
  %inc58 = add nsw i32 %47, 1
  store i32 %inc58, ptr %j, align 4
  br label %for.cond52, !llvm.loop !8

for.end59:                                        ; preds = %for.cond52
  store i32 64, ptr %j, align 4
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc91, %for.end59
  %48 = load i32, ptr %j, align 4
  %cmp61 = icmp sle i32 %48, 254
  br i1 %cmp61, label %for.body63, label %for.end93

for.body63:                                       ; preds = %for.cond60
  %49 = load i32, ptr %j, align 4
  %and64 = and i32 %49, 15
  %cmp65 = icmp eq i32 0, %and64
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.body63
  %50 = load ptr, ptr %kr, align 8
  %51 = load i32, ptr %j, align 4
  %call68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.11, i32 noundef %51) #3
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %for.body63
  %52 = load i32, ptr %j, align 4
  %cmp70 = icmp eq i32 64, %52
  br i1 %cmp70, label %if.then83, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %if.end69
  %53 = load i32, ptr %j, align 4
  %cmp73 = icmp sle i32 91, %53
  br i1 %cmp73, label %land.lhs.true, label %lor.lhs.false77

land.lhs.true:                                    ; preds = %lor.lhs.false72
  %54 = load i32, ptr %j, align 4
  %cmp75 = icmp sle i32 %54, 96
  br i1 %cmp75, label %if.then83, label %lor.lhs.false77

lor.lhs.false77:                                  ; preds = %land.lhs.true, %lor.lhs.false72
  %55 = load i32, ptr %j, align 4
  %cmp78 = icmp sle i32 123, %55
  br i1 %cmp78, label %land.lhs.true80, label %if.else

land.lhs.true80:                                  ; preds = %lor.lhs.false77
  %56 = load i32, ptr %j, align 4
  %cmp81 = icmp sle i32 %56, 128
  br i1 %cmp81, label %if.then83, label %if.else

if.then83:                                        ; preds = %land.lhs.true80, %land.lhs.true, %if.end69
  %57 = load ptr, ptr %kr, align 8
  %call84 = call i32 @"\01_fputs"(ptr noundef @.str.16, ptr noundef %57)
  br label %if.end90

if.else:                                          ; preds = %land.lhs.true80, %lor.lhs.false77
  %58 = load ptr, ptr %kr, align 8
  %59 = load i32, ptr %i, align 4
  %conv85 = trunc i32 %59 to i8
  %conv86 = sext i8 %conv85 to i32
  %60 = load i32, ptr %j, align 4
  %conv87 = trunc i32 %60 to i8
  %conv88 = sext i8 %conv87 to i32
  %call89 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %58, ptr noundef @.str.17, i32 noundef %conv86, i32 noundef %conv88) #3
  br label %if.end90

if.end90:                                         ; preds = %if.else, %if.then83
  br label %for.inc91

for.inc91:                                        ; preds = %if.end90
  %61 = load i32, ptr %j, align 4
  %inc92 = add nsw i32 %61, 1
  store i32 %inc92, ptr %j, align 4
  br label %for.cond60, !llvm.loop !9

for.end93:                                        ; preds = %for.cond60
  %62 = load ptr, ptr %kr, align 8
  %call94 = call i32 @"\01_fputs"(ptr noundef @.str.18, ptr noundef %62)
  br label %for.inc95

for.inc95:                                        ; preds = %for.end93
  %63 = load i32, ptr %i, align 4
  %inc96 = add nsw i32 %63, 1
  store i32 %inc96, ptr %i, align 4
  br label %for.cond47, !llvm.loop !10

for.end97:                                        ; preds = %for.cond47
  store i32 161, ptr %i, align 4
  br label %for.cond98

for.cond98:                                       ; preds = %for.inc216, %for.end97
  %64 = load i32, ptr %i, align 4
  %cmp99 = icmp sle i32 %64, 254
  br i1 %cmp99, label %for.body101, label %for.end218

for.body101:                                      ; preds = %for.cond98
  %65 = load ptr, ptr %kr, align 8
  %66 = load i32, ptr %i, align 4
  %call102 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef @.str.15, i32 noundef %66) #3
  %67 = load ptr, ptr %cn, align 8
  %68 = load i32, ptr %i, align 4
  %call103 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str.19, i32 noundef %68) #3
  %69 = load ptr, ptr %tw, align 8
  %70 = load i32, ptr %i, align 4
  %call104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef @.str.20, i32 noundef %70) #3
  %71 = load ptr, ptr %jp, align 8
  %72 = load i32, ptr %i, align 4
  %call105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.21, i32 noundef %72) #3
  store i32 0, ptr %j, align 4
  br label %for.cond106

for.cond106:                                      ; preds = %for.inc114, %for.body101
  %73 = load i32, ptr %j, align 4
  %cmp107 = icmp slt i32 %73, 16
  br i1 %cmp107, label %for.body109, label %for.end116

for.body109:                                      ; preds = %for.cond106
  %74 = load ptr, ptr %kr, align 8
  %75 = load i32, ptr %j, align 4
  %call110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str.10, i32 noundef %75) #3
  %76 = load ptr, ptr %cn, align 8
  %77 = load i32, ptr %j, align 4
  %call111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %76, ptr noundef @.str.10, i32 noundef %77) #3
  %78 = load ptr, ptr %tw, align 8
  %79 = load i32, ptr %j, align 4
  %call112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef @.str.10, i32 noundef %79) #3
  %80 = load ptr, ptr %jp, align 8
  %81 = load i32, ptr %j, align 4
  %call113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef @.str.10, i32 noundef %81) #3
  br label %for.inc114

for.inc114:                                       ; preds = %for.body109
  %82 = load i32, ptr %j, align 4
  %inc115 = add nsw i32 %82, 1
  store i32 %inc115, ptr %j, align 4
  br label %for.cond106, !llvm.loop !11

for.end116:                                       ; preds = %for.cond106
  %83 = load i32, ptr %i, align 4
  %cmp117 = icmp slt i32 %83, 199
  br i1 %cmp117, label %if.then119, label %if.end156

if.then119:                                       ; preds = %for.end116
  store i32 64, ptr %j, align 4
  br label %for.cond120

for.cond120:                                      ; preds = %for.inc153, %if.then119
  %84 = load i32, ptr %j, align 4
  %cmp121 = icmp sle i32 %84, 159
  br i1 %cmp121, label %for.body123, label %for.end155

for.body123:                                      ; preds = %for.cond120
  %85 = load i32, ptr %j, align 4
  %and124 = and i32 %85, 15
  %cmp125 = icmp eq i32 0, %and124
  br i1 %cmp125, label %if.then127, label %if.end129

if.then127:                                       ; preds = %for.body123
  %86 = load ptr, ptr %kr, align 8
  %87 = load i32, ptr %j, align 4
  %call128 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str.11, i32 noundef %87) #3
  br label %if.end129

if.end129:                                        ; preds = %if.then127, %for.body123
  %88 = load i32, ptr %j, align 4
  %cmp130 = icmp eq i32 64, %88
  br i1 %cmp130, label %if.then144, label %lor.lhs.false132

lor.lhs.false132:                                 ; preds = %if.end129
  %89 = load i32, ptr %j, align 4
  %cmp133 = icmp sle i32 91, %89
  br i1 %cmp133, label %land.lhs.true135, label %lor.lhs.false138

land.lhs.true135:                                 ; preds = %lor.lhs.false132
  %90 = load i32, ptr %j, align 4
  %cmp136 = icmp sle i32 %90, 96
  br i1 %cmp136, label %if.then144, label %lor.lhs.false138

lor.lhs.false138:                                 ; preds = %land.lhs.true135, %lor.lhs.false132
  %91 = load i32, ptr %j, align 4
  %cmp139 = icmp sle i32 123, %91
  br i1 %cmp139, label %land.lhs.true141, label %if.else146

land.lhs.true141:                                 ; preds = %lor.lhs.false138
  %92 = load i32, ptr %j, align 4
  %cmp142 = icmp sle i32 %92, 128
  br i1 %cmp142, label %if.then144, label %if.else146

if.then144:                                       ; preds = %land.lhs.true141, %land.lhs.true135, %if.end129
  %93 = load ptr, ptr %kr, align 8
  %call145 = call i32 @"\01_fputs"(ptr noundef @.str.16, ptr noundef %93)
  br label %if.end152

if.else146:                                       ; preds = %land.lhs.true141, %lor.lhs.false138
  %94 = load ptr, ptr %kr, align 8
  %95 = load i32, ptr %i, align 4
  %conv147 = trunc i32 %95 to i8
  %conv148 = sext i8 %conv147 to i32
  %96 = load i32, ptr %j, align 4
  %conv149 = trunc i32 %96 to i8
  %conv150 = sext i8 %conv149 to i32
  %call151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef @.str.17, i32 noundef %conv148, i32 noundef %conv150) #3
  br label %if.end152

if.end152:                                        ; preds = %if.else146, %if.then144
  br label %for.inc153

for.inc153:                                       ; preds = %if.end152
  %97 = load i32, ptr %j, align 4
  %inc154 = add nsw i32 %97, 1
  store i32 %inc154, ptr %j, align 4
  br label %for.cond120, !llvm.loop !12

for.end155:                                       ; preds = %for.cond120
  br label %if.end156

if.end156:                                        ; preds = %for.end155, %for.end116
  store i32 160, ptr %j, align 4
  br label %for.cond157

for.cond157:                                      ; preds = %for.inc209, %if.end156
  %98 = load i32, ptr %j, align 4
  %cmp158 = icmp sle i32 %98, 254
  br i1 %cmp158, label %for.body160, label %for.end211

for.body160:                                      ; preds = %for.cond157
  %99 = load i32, ptr %j, align 4
  %and161 = and i32 %99, 15
  %cmp162 = icmp eq i32 0, %and161
  br i1 %cmp162, label %if.then164, label %if.end169

if.then164:                                       ; preds = %for.body160
  %100 = load ptr, ptr %kr, align 8
  %101 = load i32, ptr %j, align 4
  %call165 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %100, ptr noundef @.str.11, i32 noundef %101) #3
  %102 = load ptr, ptr %cn, align 8
  %103 = load i32, ptr %j, align 4
  %call166 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %102, ptr noundef @.str.11, i32 noundef %103) #3
  %104 = load ptr, ptr %tw, align 8
  %105 = load i32, ptr %j, align 4
  %call167 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef @.str.11, i32 noundef %105) #3
  %106 = load ptr, ptr %jp, align 8
  %107 = load i32, ptr %j, align 4
  %call168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %106, ptr noundef @.str.11, i32 noundef %107) #3
  br label %if.end169

if.end169:                                        ; preds = %if.then164, %for.body160
  %108 = load i32, ptr %j, align 4
  %cmp170 = icmp eq i32 160, %108
  br i1 %cmp170, label %if.then172, label %if.else187

if.then172:                                       ; preds = %if.end169
  %109 = load i32, ptr %i, align 4
  %cmp173 = icmp slt i32 %109, 199
  br i1 %cmp173, label %if.then175, label %if.else181

if.then175:                                       ; preds = %if.then172
  %110 = load ptr, ptr %kr, align 8
  %111 = load i32, ptr %i, align 4
  %conv176 = trunc i32 %111 to i8
  %conv177 = sext i8 %conv176 to i32
  %112 = load i32, ptr %j, align 4
  %conv178 = trunc i32 %112 to i8
  %conv179 = sext i8 %conv178 to i32
  %call180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef @.str.17, i32 noundef %conv177, i32 noundef %conv179) #3
  br label %if.end183

if.else181:                                       ; preds = %if.then172
  %113 = load ptr, ptr %kr, align 8
  %call182 = call i32 @"\01_fputs"(ptr noundef @.str.16, ptr noundef %113)
  br label %if.end183

if.end183:                                        ; preds = %if.else181, %if.then175
  %114 = load ptr, ptr %cn, align 8
  %call184 = call i32 @"\01_fputs"(ptr noundef @.str.16, ptr noundef %114)
  %115 = load ptr, ptr %tw, align 8
  %call185 = call i32 @"\01_fputs"(ptr noundef @.str.16, ptr noundef %115)
  %116 = load ptr, ptr %jp, align 8
  %call186 = call i32 @"\01_fputs"(ptr noundef @.str.16, ptr noundef %116)
  br label %if.end208

if.else187:                                       ; preds = %if.end169
  %117 = load ptr, ptr %kr, align 8
  %118 = load i32, ptr %i, align 4
  %conv188 = trunc i32 %118 to i8
  %conv189 = sext i8 %conv188 to i32
  %119 = load i32, ptr %j, align 4
  %conv190 = trunc i32 %119 to i8
  %conv191 = sext i8 %conv190 to i32
  %call192 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef @.str.17, i32 noundef %conv189, i32 noundef %conv191) #3
  %120 = load ptr, ptr %cn, align 8
  %121 = load i32, ptr %i, align 4
  %conv193 = trunc i32 %121 to i8
  %conv194 = sext i8 %conv193 to i32
  %122 = load i32, ptr %j, align 4
  %conv195 = trunc i32 %122 to i8
  %conv196 = sext i8 %conv195 to i32
  %call197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str.17, i32 noundef %conv194, i32 noundef %conv196) #3
  %123 = load ptr, ptr %tw, align 8
  %124 = load i32, ptr %i, align 4
  %conv198 = trunc i32 %124 to i8
  %conv199 = sext i8 %conv198 to i32
  %125 = load i32, ptr %j, align 4
  %conv200 = trunc i32 %125 to i8
  %conv201 = sext i8 %conv200 to i32
  %call202 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str.17, i32 noundef %conv199, i32 noundef %conv201) #3
  %126 = load ptr, ptr %jp, align 8
  %127 = load i32, ptr %i, align 4
  %conv203 = trunc i32 %127 to i8
  %conv204 = sext i8 %conv203 to i32
  %128 = load i32, ptr %j, align 4
  %conv205 = trunc i32 %128 to i8
  %conv206 = sext i8 %conv205 to i32
  %call207 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %126, ptr noundef @.str.17, i32 noundef %conv204, i32 noundef %conv206) #3
  br label %if.end208

if.end208:                                        ; preds = %if.else187, %if.end183
  br label %for.inc209

for.inc209:                                       ; preds = %if.end208
  %129 = load i32, ptr %j, align 4
  %inc210 = add nsw i32 %129, 1
  store i32 %inc210, ptr %j, align 4
  br label %for.cond157, !llvm.loop !13

for.end211:                                       ; preds = %for.cond157
  %130 = load ptr, ptr %kr, align 8
  %call212 = call i32 @"\01_fputs"(ptr noundef @.str.18, ptr noundef %130)
  %131 = load ptr, ptr %cn, align 8
  %call213 = call i32 @"\01_fputs"(ptr noundef @.str.18, ptr noundef %131)
  %132 = load ptr, ptr %tw, align 8
  %call214 = call i32 @"\01_fputs"(ptr noundef @.str.18, ptr noundef %132)
  %133 = load ptr, ptr %jp, align 8
  %call215 = call i32 @"\01_fputs"(ptr noundef @.str.18, ptr noundef %133)
  br label %for.inc216

for.inc216:                                       ; preds = %for.end211
  %134 = load i32, ptr %i, align 4
  %inc217 = add nsw i32 %134, 1
  store i32 %inc217, ptr %i, align 4
  br label %for.cond98, !llvm.loop !14

for.end218:                                       ; preds = %for.cond98
  %call219 = call i32 @puts(ptr noundef @.str.22)
  store i32 161, ptr %pl, align 4
  br label %for.cond220

for.cond220:                                      ; preds = %for.inc269, %for.end218
  %135 = load i32, ptr %pl, align 4
  %cmp221 = icmp sle i32 %135, 176
  br i1 %cmp221, label %for.body223, label %for.end271

for.body223:                                      ; preds = %for.cond220
  %136 = load ptr, ptr %tw, align 8
  %137 = load i32, ptr %pl, align 4
  %138 = load i32, ptr %pl, align 4
  %sub = sub nsw i32 %138, 160
  %call224 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %136, ptr noundef @.str.23, i32 noundef %137, i32 noundef %sub) #3
  store i32 161, ptr %i, align 4
  br label %for.cond225

for.cond225:                                      ; preds = %for.inc266, %for.body223
  %139 = load i32, ptr %i, align 4
  %cmp226 = icmp sle i32 %139, 254
  br i1 %cmp226, label %for.body228, label %for.end268

for.body228:                                      ; preds = %for.cond225
  %140 = load ptr, ptr %tw, align 8
  %141 = load i32, ptr %pl, align 4
  %sub229 = sub nsw i32 %141, 160
  %142 = load i32, ptr %i, align 4
  %call230 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.24, i32 noundef %sub229, i32 noundef %142) #3
  store i32 0, ptr %j, align 4
  br label %for.cond231

for.cond231:                                      ; preds = %for.inc236, %for.body228
  %143 = load i32, ptr %j, align 4
  %cmp232 = icmp slt i32 %143, 16
  br i1 %cmp232, label %for.body234, label %for.end238

for.body234:                                      ; preds = %for.cond231
  %144 = load ptr, ptr %tw, align 8
  %145 = load i32, ptr %j, align 4
  %call235 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %144, ptr noundef @.str.10, i32 noundef %145) #3
  br label %for.inc236

for.inc236:                                       ; preds = %for.body234
  %146 = load i32, ptr %j, align 4
  %inc237 = add nsw i32 %146, 1
  store i32 %inc237, ptr %j, align 4
  br label %for.cond231, !llvm.loop !15

for.end238:                                       ; preds = %for.cond231
  store i32 160, ptr %j, align 4
  br label %for.cond239

for.cond239:                                      ; preds = %for.inc262, %for.end238
  %147 = load i32, ptr %j, align 4
  %cmp240 = icmp sle i32 %147, 254
  br i1 %cmp240, label %for.body242, label %for.end264

for.body242:                                      ; preds = %for.cond239
  %148 = load i32, ptr %j, align 4
  %and243 = and i32 %148, 15
  %cmp244 = icmp eq i32 0, %and243
  br i1 %cmp244, label %if.then246, label %if.end248

if.then246:                                       ; preds = %for.body242
  %149 = load ptr, ptr %tw, align 8
  %150 = load i32, ptr %j, align 4
  %call247 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef @.str.11, i32 noundef %150) #3
  br label %if.end248

if.end248:                                        ; preds = %if.then246, %for.body242
  %151 = load i32, ptr %j, align 4
  %cmp249 = icmp eq i32 160, %151
  br i1 %cmp249, label %if.then251, label %if.else253

if.then251:                                       ; preds = %if.end248
  %152 = load ptr, ptr %tw, align 8
  %call252 = call i32 @"\01_fputs"(ptr noundef @.str.16, ptr noundef %152)
  br label %if.end261

if.else253:                                       ; preds = %if.end248
  %153 = load ptr, ptr %tw, align 8
  %154 = load i32, ptr %pl, align 4
  %conv254 = trunc i32 %154 to i8
  %conv255 = sext i8 %conv254 to i32
  %155 = load i32, ptr %i, align 4
  %conv256 = trunc i32 %155 to i8
  %conv257 = sext i8 %conv256 to i32
  %156 = load i32, ptr %j, align 4
  %conv258 = trunc i32 %156 to i8
  %conv259 = sext i8 %conv258 to i32
  %call260 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %153, ptr noundef @.str.25, i32 noundef %conv255, i32 noundef %conv257, i32 noundef %conv259) #3
  br label %if.end261

if.end261:                                        ; preds = %if.else253, %if.then251
  br label %for.inc262

for.inc262:                                       ; preds = %if.end261
  %157 = load i32, ptr %j, align 4
  %inc263 = add nsw i32 %157, 1
  store i32 %inc263, ptr %j, align 4
  br label %for.cond239, !llvm.loop !16

for.end264:                                       ; preds = %for.cond239
  %158 = load ptr, ptr %tw, align 8
  %call265 = call i32 @"\01_fputs"(ptr noundef @.str.18, ptr noundef %158)
  br label %for.inc266

for.inc266:                                       ; preds = %for.end264
  %159 = load i32, ptr %i, align 4
  %inc267 = add nsw i32 %159, 1
  store i32 %inc267, ptr %i, align 4
  br label %for.cond225, !llvm.loop !17

for.end268:                                       ; preds = %for.cond225
  br label %for.inc269

for.inc269:                                       ; preds = %for.end268
  %160 = load i32, ptr %pl, align 4
  %inc270 = add nsw i32 %160, 1
  store i32 %inc270, ptr %pl, align 4
  br label %for.cond220, !llvm.loop !18

for.end271:                                       ; preds = %for.cond220
  %call272 = call i32 @puts(ptr noundef @.str.26)
  %161 = load ptr, ptr %jp, align 8
  %call273 = call i32 @"\01_fputs"(ptr noundef @.str.27, ptr noundef %161)
  store i32 0, ptr %i, align 4
  br label %for.cond274

for.cond274:                                      ; preds = %for.inc279, %for.end271
  %162 = load i32, ptr %i, align 4
  %cmp275 = icmp slt i32 %162, 16
  br i1 %cmp275, label %for.body277, label %for.end281

for.body277:                                      ; preds = %for.cond274
  %163 = load ptr, ptr %jp, align 8
  %164 = load i32, ptr %i, align 4
  %call278 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %163, ptr noundef @.str.10, i32 noundef %164) #3
  br label %for.inc279

for.inc279:                                       ; preds = %for.body277
  %165 = load i32, ptr %i, align 4
  %inc280 = add nsw i32 %165, 1
  store i32 %inc280, ptr %i, align 4
  br label %for.cond274, !llvm.loop !19

for.end281:                                       ; preds = %for.cond274
  store i32 160, ptr %i, align 4
  br label %for.cond282

for.cond282:                                      ; preds = %for.inc301, %for.end281
  %166 = load i32, ptr %i, align 4
  %cmp283 = icmp sle i32 %166, 223
  br i1 %cmp283, label %for.body285, label %for.end303

for.body285:                                      ; preds = %for.cond282
  %167 = load i32, ptr %i, align 4
  %and286 = and i32 %167, 15
  %cmp287 = icmp eq i32 0, %and286
  br i1 %cmp287, label %if.then289, label %if.end291

if.then289:                                       ; preds = %for.body285
  %168 = load ptr, ptr %jp, align 8
  %169 = load i32, ptr %i, align 4
  %call290 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.11, i32 noundef %169) #3
  br label %if.end291

if.end291:                                        ; preds = %if.then289, %for.body285
  %170 = load i32, ptr %i, align 4
  %cmp292 = icmp sgt i32 %170, 160
  br i1 %cmp292, label %if.then294, label %if.else298

if.then294:                                       ; preds = %if.end291
  %171 = load ptr, ptr %jp, align 8
  %172 = load i32, ptr %i, align 4
  %conv295 = trunc i32 %172 to i8
  %conv296 = sext i8 %conv295 to i32
  %call297 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str.28, i32 noundef %conv296) #3
  br label %if.end300

if.else298:                                       ; preds = %if.end291
  %173 = load ptr, ptr %jp, align 8
  %call299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %173, ptr noundef @.str.29) #3
  br label %if.end300

if.end300:                                        ; preds = %if.else298, %if.then294
  br label %for.inc301

for.inc301:                                       ; preds = %if.end300
  %174 = load i32, ptr %i, align 4
  %inc302 = add nsw i32 %174, 1
  store i32 %inc302, ptr %i, align 4
  br label %for.cond282, !llvm.loop !20

for.end303:                                       ; preds = %for.cond282
  %175 = load ptr, ptr %jp, align 8
  %call304 = call i32 @"\01_fputs"(ptr noundef @.str.13, ptr noundef %175)
  %call305 = call i32 @puts(ptr noundef @.str.30)
  store i32 161, ptr %i, align 4
  br label %for.cond306

for.cond306:                                      ; preds = %for.inc344, %for.end303
  %176 = load i32, ptr %i, align 4
  %cmp307 = icmp sle i32 %176, 254
  br i1 %cmp307, label %for.body309, label %for.end346

for.body309:                                      ; preds = %for.cond306
  %177 = load ptr, ptr %jp, align 8
  %178 = load i32, ptr %i, align 4
  %call310 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str.31, i32 noundef %178) #3
  store i32 0, ptr %j, align 4
  br label %for.cond311

for.cond311:                                      ; preds = %for.inc316, %for.body309
  %179 = load i32, ptr %j, align 4
  %cmp312 = icmp slt i32 %179, 16
  br i1 %cmp312, label %for.body314, label %for.end318

for.body314:                                      ; preds = %for.cond311
  %180 = load ptr, ptr %jp, align 8
  %181 = load i32, ptr %j, align 4
  %call315 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef @.str.10, i32 noundef %181) #3
  br label %for.inc316

for.inc316:                                       ; preds = %for.body314
  %182 = load i32, ptr %j, align 4
  %inc317 = add nsw i32 %182, 1
  store i32 %inc317, ptr %j, align 4
  br label %for.cond311, !llvm.loop !21

for.end318:                                       ; preds = %for.cond311
  store i32 160, ptr %j, align 4
  br label %for.cond319

for.cond319:                                      ; preds = %for.inc340, %for.end318
  %183 = load i32, ptr %j, align 4
  %cmp320 = icmp sle i32 %183, 254
  br i1 %cmp320, label %for.body322, label %for.end342

for.body322:                                      ; preds = %for.cond319
  %184 = load i32, ptr %j, align 4
  %and323 = and i32 %184, 15
  %cmp324 = icmp eq i32 0, %and323
  br i1 %cmp324, label %if.then326, label %if.end328

if.then326:                                       ; preds = %for.body322
  %185 = load ptr, ptr %jp, align 8
  %186 = load i32, ptr %j, align 4
  %call327 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.11, i32 noundef %186) #3
  br label %if.end328

if.end328:                                        ; preds = %if.then326, %for.body322
  %187 = load i32, ptr %j, align 4
  %cmp329 = icmp eq i32 160, %187
  br i1 %cmp329, label %if.then331, label %if.else333

if.then331:                                       ; preds = %if.end328
  %188 = load ptr, ptr %jp, align 8
  %call332 = call i32 @"\01_fputs"(ptr noundef @.str.16, ptr noundef %188)
  br label %if.end339

if.else333:                                       ; preds = %if.end328
  %189 = load ptr, ptr %jp, align 8
  %190 = load i32, ptr %i, align 4
  %conv334 = trunc i32 %190 to i8
  %conv335 = sext i8 %conv334 to i32
  %191 = load i32, ptr %j, align 4
  %conv336 = trunc i32 %191 to i8
  %conv337 = sext i8 %conv336 to i32
  %call338 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %189, ptr noundef @.str.32, i32 noundef %conv335, i32 noundef %conv337) #3
  br label %if.end339

if.end339:                                        ; preds = %if.else333, %if.then331
  br label %for.inc340

for.inc340:                                       ; preds = %if.end339
  %192 = load i32, ptr %j, align 4
  %inc341 = add nsw i32 %192, 1
  store i32 %inc341, ptr %j, align 4
  br label %for.cond319, !llvm.loop !22

for.end342:                                       ; preds = %for.cond319
  %193 = load ptr, ptr %jp, align 8
  %call343 = call i32 @"\01_fputs"(ptr noundef @.str.18, ptr noundef %193)
  br label %for.inc344

for.inc344:                                       ; preds = %for.end342
  %194 = load i32, ptr %i, align 4
  %inc345 = add nsw i32 %194, 1
  store i32 %inc345, ptr %i, align 4
  br label %for.cond306, !llvm.loop !23

for.end346:                                       ; preds = %for.cond306
  %195 = load ptr, ptr %kr, align 8
  %call347 = call i32 @"\01_fputs"(ptr noundef @.str.33, ptr noundef %195)
  %196 = load ptr, ptr %cn, align 8
  %call348 = call i32 @"\01_fputs"(ptr noundef @.str.33, ptr noundef %196)
  %197 = load ptr, ptr %tw, align 8
  %call349 = call i32 @"\01_fputs"(ptr noundef @.str.33, ptr noundef %197)
  %198 = load ptr, ptr %jp, align 8
  %call350 = call i32 @"\01_fputs"(ptr noundef @.str.33, ptr noundef %198)
  %199 = load ptr, ptr %kr, align 8
  %call351 = call i32 @fclose(ptr noundef %199)
  %200 = load ptr, ptr %cn, align 8
  %call352 = call i32 @fclose(ptr noundef %200)
  %201 = load ptr, ptr %tw, align 8
  %call353 = call i32 @fclose(ptr noundef %201)
  %202 = load ptr, ptr %jp, align 8
  %call354 = call i32 @fclose(ptr noundef %202)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end346, %if.then
  %203 = load i32, ptr %retval, align 4
  ret i32 %203
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @puts(ptr noundef) #1

declare i32 @"\01_fputs"(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @fclose(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
!12 = distinct !{!12, !6}
!13 = distinct !{!13, !6}
!14 = distinct !{!14, !6}
!15 = distinct !{!15, !6}
!16 = distinct !{!16, !6}
!17 = distinct !{!17, !6}
!18 = distinct !{!18, !6}
!19 = distinct !{!19, !6}
!20 = distinct !{!20, !6}
!21 = distinct !{!21, !6}
!22 = distinct !{!22, !6}
!23 = distinct !{!23, !6}
