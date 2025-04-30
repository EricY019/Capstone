; ModuleID = './code/136-16423hz.c'
source_filename = "./code/136-16423hz.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [15 x i8] c"hz-gb2312.html\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [296 x i8] c"<html lang=zh-cn>\0A <head>\0A  <meta http-equiv=\22Content-Type\22 content=\22text/html;charset=hz-gb-2312\22>\0A  <title>HZ</title>\0A  <style>.unused { background: #ccc; } .special { background: #eee; } table { float: left; }</style>\0A </head>\0A <body>\0A  <table><caption>ASCII/CNS-Roman</caption>\0A   <tr><th>  \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"<th>%X\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\0A   <tr><th>%02X\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"<td class=special>~~\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"<td%s>%c\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c" class=unused\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"\0A  </table>\0A\00", align 1
@.str.10 = private unnamed_addr constant [65 x i8] c"  <table><caption>Multibyte: HZ (Lead %X)</caption>\0A   <tr><th> \00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"<td class=unused>&nbsp;\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"<td>~{%c%c~}\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"\0A </body>\0A</html>\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pl = alloca i32, align 4
  %gbk = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %gbk, align 8
  %0 = load ptr, ptr %gbk, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %gbk, align 8
  %call1 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %gbk, align 8
  %4 = load i32, ptr %i, align 4
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.3, i32 noundef %4) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 32, ptr %i, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc17, %for.end
  %6 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %6, 128
  br i1 %cmp4, label %for.body5, label %for.end19

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, ptr %i, align 4
  %and = and i32 %7, 15
  %cmp6 = icmp eq i32 0, %and
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body5
  %8 = load ptr, ptr %gbk, align 8
  %9 = load i32, ptr %i, align 4
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.4, i32 noundef %9) #3
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.body5
  %10 = load i32, ptr %i, align 4
  %cmp10 = icmp eq i32 126, %10
  br i1 %cmp10, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %11 = load ptr, ptr %gbk, align 8
  %call12 = call i32 @"\01_fputs"(ptr noundef @.str.5, ptr noundef %11)
  br label %if.end16

if.else:                                          ; preds = %if.end9
  %12 = load ptr, ptr %gbk, align 8
  %13 = load i32, ptr %i, align 4
  %cmp13 = icmp eq i32 127, %13
  %14 = zext i1 %cmp13 to i64
  %cond = select i1 %cmp13, ptr @.str.7, ptr @.str.8
  %15 = load i32, ptr %i, align 4
  %conv = trunc i32 %15 to i8
  %conv14 = sext i8 %conv to i32
  %call15 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.6, ptr noundef %cond, i32 noundef %conv14) #3
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then11
  br label %for.inc17

for.inc17:                                        ; preds = %if.end16
  %16 = load i32, ptr %i, align 4
  %inc18 = add nsw i32 %16, 1
  store i32 %inc18, ptr %i, align 4
  br label %for.cond3, !llvm.loop !7

for.end19:                                        ; preds = %for.cond3
  %17 = load ptr, ptr %gbk, align 8
  %call20 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %17)
  store i32 33, ptr %i, align 4
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc61, %for.end19
  %18 = load i32, ptr %i, align 4
  %cmp22 = icmp slt i32 %18, 126
  br i1 %cmp22, label %for.body24, label %for.end63

for.body24:                                       ; preds = %for.cond21
  %19 = load ptr, ptr %gbk, align 8
  %20 = load i32, ptr %i, align 4
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.10, i32 noundef %20) #3
  store i32 0, ptr %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc31, %for.body24
  %21 = load i32, ptr %j, align 4
  %cmp27 = icmp slt i32 %21, 16
  br i1 %cmp27, label %for.body29, label %for.end33

for.body29:                                       ; preds = %for.cond26
  %22 = load ptr, ptr %gbk, align 8
  %23 = load i32, ptr %j, align 4
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef @.str.3, i32 noundef %23) #3
  br label %for.inc31

for.inc31:                                        ; preds = %for.body29
  %24 = load i32, ptr %j, align 4
  %inc32 = add nsw i32 %24, 1
  store i32 %inc32, ptr %j, align 4
  br label %for.cond26, !llvm.loop !8

for.end33:                                        ; preds = %for.cond26
  store i32 32, ptr %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc57, %for.end33
  %25 = load i32, ptr %j, align 4
  %cmp35 = icmp slt i32 %25, 128
  br i1 %cmp35, label %for.body37, label %for.end59

for.body37:                                       ; preds = %for.cond34
  %26 = load i32, ptr %j, align 4
  %and38 = and i32 %26, 15
  %cmp39 = icmp eq i32 0, %and38
  br i1 %cmp39, label %if.then41, label %if.end43

if.then41:                                        ; preds = %for.body37
  %27 = load ptr, ptr %gbk, align 8
  %28 = load i32, ptr %j, align 4
  %call42 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.4, i32 noundef %28) #3
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %for.body37
  %29 = load i32, ptr %j, align 4
  %cmp44 = icmp eq i32 32, %29
  br i1 %cmp44, label %if.then48, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end43
  %30 = load i32, ptr %j, align 4
  %cmp46 = icmp sgt i32 %30, 126
  br i1 %cmp46, label %if.then48, label %if.else50

if.then48:                                        ; preds = %lor.lhs.false, %if.end43
  %31 = load ptr, ptr %gbk, align 8
  %call49 = call i32 @"\01_fputs"(ptr noundef @.str.11, ptr noundef %31)
  br label %if.end56

if.else50:                                        ; preds = %lor.lhs.false
  %32 = load ptr, ptr %gbk, align 8
  %33 = load i32, ptr %i, align 4
  %conv51 = trunc i32 %33 to i8
  %conv52 = sext i8 %conv51 to i32
  %34 = load i32, ptr %j, align 4
  %conv53 = trunc i32 %34 to i8
  %conv54 = sext i8 %conv53 to i32
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.12, i32 noundef %conv52, i32 noundef %conv54) #3
  br label %if.end56

if.end56:                                         ; preds = %if.else50, %if.then48
  br label %for.inc57

for.inc57:                                        ; preds = %if.end56
  %35 = load i32, ptr %j, align 4
  %inc58 = add nsw i32 %35, 1
  store i32 %inc58, ptr %j, align 4
  br label %for.cond34, !llvm.loop !9

for.end59:                                        ; preds = %for.cond34
  %36 = load ptr, ptr %gbk, align 8
  %call60 = call i32 @"\01_fputs"(ptr noundef @.str.9, ptr noundef %36)
  br label %for.inc61

for.inc61:                                        ; preds = %for.end59
  %37 = load i32, ptr %i, align 4
  %inc62 = add nsw i32 %37, 1
  store i32 %inc62, ptr %i, align 4
  br label %for.cond21, !llvm.loop !10

for.end63:                                        ; preds = %for.cond21
  %38 = load ptr, ptr %gbk, align 8
  %call64 = call i32 @"\01_fputs"(ptr noundef @.str.13, ptr noundef %38)
  %39 = load ptr, ptr %gbk, align 8
  %call65 = call i32 @fclose(ptr noundef %39)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end63, %if.then
  %40 = load i32, ptr %retval, align 4
  ret i32 %40
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

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
