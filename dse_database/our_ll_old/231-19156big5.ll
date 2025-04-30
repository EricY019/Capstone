; ModuleID = './code/231-19156big5.c'
source_filename = "./code/231-19156big5.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [16 x i8] c"big5-table.html\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [261 x i8] c"<html lang=zh-tw>\0A <head>\0A  <meta http-equiv=\22Content-Type\22 content=\22text/html;charset=big5\22>\0A  <title>Big5</title>\0A  <style>.unused { background: #ccc; } table { float: left; }</style>\0A </head>\0A <body>\0A  <table><caption>ASCII/CNS-Roman</caption>\0A   <tr><th>  \00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"<th>%X\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"\0A   <tr><th>%02X\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"<td%s>%c\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c" class=unused\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"\0A  </table>\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"  <table><caption>Multibyte: Big5 (Lead %X)</caption>\0A   <tr><th> \00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"<td class=unused>&nbsp;\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"<td>%c%c\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"\0A </body>\0A</html>\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %pl = alloca i32, align 4
  %b5 = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr %b5, align 8
  %0 = load ptr, ptr %b5, align 8
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %b5, align 8
  %call1 = call i32 @"\01_fputs"(ptr noundef @.str.2, ptr noundef %1)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %2, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %b5, align 8
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

for.cond3:                                        ; preds = %for.inc13, %for.end
  %6 = load i32, ptr %i, align 4
  %cmp4 = icmp slt i32 %6, 128
  br i1 %cmp4, label %for.body5, label %for.end15

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, ptr %i, align 4
  %and = and i32 %7, 15
  %cmp6 = icmp eq i32 0, %and
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %for.body5
  %8 = load ptr, ptr %b5, align 8
  %9 = load i32, ptr %i, align 4
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.4, i32 noundef %9) #3
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %for.body5
  %10 = load ptr, ptr %b5, align 8
  %11 = load i32, ptr %i, align 4
  %cmp10 = icmp eq i32 127, %11
  %12 = zext i1 %cmp10 to i64
  %cond = select i1 %cmp10, ptr @.str.6, ptr @.str.7
  %13 = load i32, ptr %i, align 4
  %conv = trunc i32 %13 to i8
  %conv11 = sext i8 %conv to i32
  %call12 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %10, ptr noundef @.str.5, ptr noundef %cond, i32 noundef %conv11) #3
  br label %for.inc13

for.inc13:                                        ; preds = %if.end9
  %14 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %14, 1
  store i32 %inc14, ptr %i, align 4
  br label %for.cond3, !llvm.loop !7

for.end15:                                        ; preds = %for.cond3
  %15 = load ptr, ptr %b5, align 8
  %call16 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %15)
  store i32 161, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc67, %for.end15
  %16 = load i32, ptr %i, align 4
  %cmp18 = icmp sle i32 %16, 254
  br i1 %cmp18, label %for.body20, label %for.end69

for.body20:                                       ; preds = %for.cond17
  %17 = load i32, ptr %i, align 4
  %cmp21 = icmp eq i32 160, %17
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body20
  store i32 224, ptr %i, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.body20
  %18 = load ptr, ptr %b5, align 8
  %19 = load i32, ptr %i, align 4
  %call25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef @.str.9, i32 noundef %19) #3
  store i32 0, ptr %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc31, %if.end24
  %20 = load i32, ptr %j, align 4
  %cmp27 = icmp slt i32 %20, 16
  br i1 %cmp27, label %for.body29, label %for.end33

for.body29:                                       ; preds = %for.cond26
  %21 = load ptr, ptr %b5, align 8
  %22 = load i32, ptr %j, align 4
  %call30 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef @.str.3, i32 noundef %22) #3
  br label %for.inc31

for.inc31:                                        ; preds = %for.body29
  %23 = load i32, ptr %j, align 4
  %inc32 = add nsw i32 %23, 1
  store i32 %inc32, ptr %j, align 4
  br label %for.cond26, !llvm.loop !8

for.end33:                                        ; preds = %for.cond26
  store i32 64, ptr %j, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc63, %for.end33
  %24 = load i32, ptr %j, align 4
  %cmp35 = icmp slt i32 %24, 256
  br i1 %cmp35, label %for.body37, label %for.end65

for.body37:                                       ; preds = %for.cond34
  %25 = load i32, ptr %j, align 4
  %cmp38 = icmp eq i32 128, %25
  br i1 %cmp38, label %if.then40, label %if.end41

if.then40:                                        ; preds = %for.body37
  store i32 160, ptr %j, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %for.body37
  %26 = load i32, ptr %j, align 4
  %and42 = and i32 %26, 15
  %cmp43 = icmp eq i32 0, %and42
  br i1 %cmp43, label %if.then45, label %if.end47

if.then45:                                        ; preds = %if.end41
  %27 = load ptr, ptr %b5, align 8
  %28 = load i32, ptr %j, align 4
  %call46 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %27, ptr noundef @.str.4, i32 noundef %28) #3
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.end41
  %29 = load i32, ptr %j, align 4
  %cmp48 = icmp eq i32 127, %29
  br i1 %cmp48, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end47
  %30 = load i32, ptr %j, align 4
  %cmp50 = icmp eq i32 160, %30
  br i1 %cmp50, label %if.then55, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %lor.lhs.false
  %31 = load i32, ptr %j, align 4
  %cmp53 = icmp sgt i32 %31, 254
  br i1 %cmp53, label %if.then55, label %if.else

if.then55:                                        ; preds = %lor.lhs.false52, %lor.lhs.false, %if.end47
  %32 = load ptr, ptr %b5, align 8
  %call56 = call i32 @"\01_fputs"(ptr noundef @.str.10, ptr noundef %32)
  br label %if.end62

if.else:                                          ; preds = %lor.lhs.false52
  %33 = load ptr, ptr %b5, align 8
  %34 = load i32, ptr %i, align 4
  %conv57 = trunc i32 %34 to i8
  %conv58 = sext i8 %conv57 to i32
  %35 = load i32, ptr %j, align 4
  %conv59 = trunc i32 %35 to i8
  %conv60 = sext i8 %conv59 to i32
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.11, i32 noundef %conv58, i32 noundef %conv60) #3
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then55
  br label %for.inc63

for.inc63:                                        ; preds = %if.end62
  %36 = load i32, ptr %j, align 4
  %inc64 = add nsw i32 %36, 1
  store i32 %inc64, ptr %j, align 4
  br label %for.cond34, !llvm.loop !9

for.end65:                                        ; preds = %for.cond34
  %37 = load ptr, ptr %b5, align 8
  %call66 = call i32 @"\01_fputs"(ptr noundef @.str.8, ptr noundef %37)
  br label %for.inc67

for.inc67:                                        ; preds = %for.end65
  %38 = load i32, ptr %i, align 4
  %inc68 = add nsw i32 %38, 1
  store i32 %inc68, ptr %i, align 4
  br label %for.cond17, !llvm.loop !10

for.end69:                                        ; preds = %for.cond17
  %39 = load ptr, ptr %b5, align 8
  %call70 = call i32 @"\01_fputs"(ptr noundef @.str.12, ptr noundef %39)
  %40 = load ptr, ptr %b5, align 8
  %call71 = call i32 @fclose(ptr noundef %40)
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %for.end69, %if.then
  %41 = load i32, ptr %retval, align 4
  ret i32 %41
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
