; ModuleID = './code/268-32854test_wcfuncs.c'
source_filename = "./code/268-32854test_wcfuncs.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [53 x i8] c"iswlower/towupper/towlower for character \\%x failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"iswupper/towlower/towupper for character \\%x failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"!iswupper/iswlower (L'A') failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"iswupper/!iswlower (L'a') failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"towlower(L'A') failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"towupper(L'a') failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"All test successful!\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %ch = alloca i32, align 4
  %up = alloca i32, align 4
  %low = alloca i32, align 4
  %low13 = alloca i32, align 4
  %up15 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %result, align 4
  store i32 0, ptr %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %ch, align 4
  %cmp = icmp slt i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %ch, align 4
  %call = call i32 @iswlower(i32 noundef %1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %2 = load i32, ptr %ch, align 4
  %call1 = call i32 @towupper(i32 noundef %2)
  store i32 %call1, ptr %up, align 4
  %3 = load i32, ptr %ch, align 4
  %call2 = call i32 @towlower(i32 noundef %3)
  store i32 %call2, ptr %low, align 4
  %4 = load i32, ptr %ch, align 4
  %5 = load i32, ptr %low, align 4
  %cmp3 = icmp ne i32 %4, %5
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32, ptr %up, align 4
  %7 = load i32, ptr %ch, align 4
  %cmp4 = icmp eq i32 %6, %7
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = load i32, ptr %up, align 4
  %9 = load i32, ptr %low, align 4
  %cmp6 = icmp eq i32 %8, %9
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then
  %10 = load i32, ptr %ch, align 4
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %10)
  %11 = load i32, ptr %result, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %lor.lhs.false5
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body
  %12 = load i32, ptr %ch, align 4
  %call10 = call i32 @iswupper(i32 noundef %12)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end26

if.then12:                                        ; preds = %if.end9
  %13 = load i32, ptr %ch, align 4
  %call14 = call i32 @towlower(i32 noundef %13)
  store i32 %call14, ptr %low13, align 4
  %14 = load i32, ptr %ch, align 4
  %call16 = call i32 @towupper(i32 noundef %14)
  store i32 %call16, ptr %up15, align 4
  %15 = load i32, ptr %ch, align 4
  %16 = load i32, ptr %up15, align 4
  %cmp17 = icmp ne i32 %15, %16
  br i1 %cmp17, label %if.then22, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.then12
  %17 = load i32, ptr %low13, align 4
  %18 = load i32, ptr %ch, align 4
  %cmp19 = icmp eq i32 %17, %18
  br i1 %cmp19, label %if.then22, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %19 = load i32, ptr %up15, align 4
  %20 = load i32, ptr %low13, align 4
  %cmp21 = icmp eq i32 %19, %20
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %lor.lhs.false20, %lor.lhs.false18, %if.then12
  %21 = load i32, ptr %ch, align 4
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %21)
  %22 = load i32, ptr %result, align 4
  %inc24 = add nsw i32 %22, 1
  store i32 %inc24, ptr %result, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %lor.lhs.false20
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end9
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %23 = load i32, ptr %ch, align 4
  %inc27 = add nsw i32 %23, 1
  store i32 %inc27, ptr %ch, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 65, ptr %ch, align 4
  %24 = load i32, ptr %ch, align 4
  %call28 = call i32 @iswupper(i32 noundef %24)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.lhs.false30, label %if.then33

lor.lhs.false30:                                  ; preds = %for.end
  %25 = load i32, ptr %ch, align 4
  %call31 = call i32 @iswlower(i32 noundef %25)
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %lor.lhs.false30, %for.end
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %26 = load i32, ptr %result, align 4
  %inc35 = add nsw i32 %26, 1
  store i32 %inc35, ptr %result, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %lor.lhs.false30
  store i32 97, ptr %ch, align 4
  %27 = load i32, ptr %ch, align 4
  %call37 = call i32 @iswupper(i32 noundef %27)
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then42, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end36
  %28 = load i32, ptr %ch, align 4
  %call40 = call i32 @iswlower(i32 noundef %28)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end45, label %if.then42

if.then42:                                        ; preds = %lor.lhs.false39, %if.end36
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %29 = load i32, ptr %result, align 4
  %inc44 = add nsw i32 %29, 1
  store i32 %inc44, ptr %result, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %lor.lhs.false39
  %call46 = call i32 @towlower(i32 noundef 65)
  %cmp47 = icmp ne i32 %call46, 97
  br i1 %cmp47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end45
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %30 = load i32, ptr %result, align 4
  %inc50 = add nsw i32 %30, 1
  store i32 %inc50, ptr %result, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end45
  %call52 = call i32 @towupper(i32 noundef 97)
  %cmp53 = icmp ne i32 %call52, 65
  br i1 %cmp53, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end51
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %31 = load i32, ptr %result, align 4
  %inc56 = add nsw i32 %31, 1
  store i32 %inc56, ptr %result, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end51
  %32 = load i32, ptr %result, align 4
  %cmp58 = icmp eq i32 %32, 0
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end57
  %call60 = call i32 @puts(ptr noundef @.str.6)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57
  %33 = load i32, ptr %result, align 4
  %cmp62 = icmp ne i32 %33, 0
  %conv = zext i1 %cmp62 to i32
  ret i32 %conv
}

declare i32 @iswlower(i32 noundef) #1

declare i32 @towupper(i32 noundef) #1

declare i32 @towlower(i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @iswupper(i32 noundef) #1

declare i32 @puts(ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
