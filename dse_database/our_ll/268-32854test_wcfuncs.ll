; ModuleID = 'code/268-32854test_wcfuncs.c'
source_filename = "code/268-32854test_wcfuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [53 x i8] c"iswlower/towupper/towlower for character \\%x failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"iswupper/towlower/towupper for character \\%x failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"!iswupper/iswlower (L'A') failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"iswupper/!iswlower (L'a') failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"towlower(L'A') failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"towupper(L'a') failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"All test successful!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %result = alloca i32, align 4
  %ch = alloca i32, align 4
  %up = alloca i32, align 4
  %low = alloca i32, align 4
  %low13 = alloca i32, align 4
  %up15 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %result, align 4
  store i32 0, i32* %ch, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %ch, align 4
  %cmp = icmp ult i32 %0, 128
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %ch, align 4
  %call = call i32 @iswlower(i32 %1) #3
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end9

if.then:                                          ; preds = %for.body
  %2 = load i32, i32* %ch, align 4
  %call1 = call i32 @towupper(i32 %2) #3
  store i32 %call1, i32* %up, align 4
  %3 = load i32, i32* %ch, align 4
  %call2 = call i32 @towlower(i32 %3) #3
  store i32 %call2, i32* %low, align 4
  %4 = load i32, i32* %ch, align 4
  %5 = load i32, i32* %low, align 4
  %cmp3 = icmp ne i32 %4, %5
  br i1 %cmp3, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %6 = load i32, i32* %up, align 4
  %7 = load i32, i32* %ch, align 4
  %cmp4 = icmp eq i32 %6, %7
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %8 = load i32, i32* %up, align 4
  %9 = load i32, i32* %low, align 4
  %cmp6 = icmp eq i32 %8, %9
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %lor.lhs.false5, %lor.lhs.false, %if.then
  %10 = load i32, i32* %ch, align 4
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %10)
  %11 = load i32, i32* %result, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %lor.lhs.false5
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body
  %12 = load i32, i32* %ch, align 4
  %call10 = call i32 @iswupper(i32 %12) #3
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.then12, label %if.end26

if.then12:                                        ; preds = %if.end9
  %13 = load i32, i32* %ch, align 4
  %call14 = call i32 @towlower(i32 %13) #3
  store i32 %call14, i32* %low13, align 4
  %14 = load i32, i32* %ch, align 4
  %call16 = call i32 @towupper(i32 %14) #3
  store i32 %call16, i32* %up15, align 4
  %15 = load i32, i32* %ch, align 4
  %16 = load i32, i32* %up15, align 4
  %cmp17 = icmp ne i32 %15, %16
  br i1 %cmp17, label %if.then22, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %if.then12
  %17 = load i32, i32* %low13, align 4
  %18 = load i32, i32* %ch, align 4
  %cmp19 = icmp eq i32 %17, %18
  br i1 %cmp19, label %if.then22, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %lor.lhs.false18
  %19 = load i32, i32* %up15, align 4
  %20 = load i32, i32* %low13, align 4
  %cmp21 = icmp eq i32 %19, %20
  br i1 %cmp21, label %if.then22, label %if.end25

if.then22:                                        ; preds = %lor.lhs.false20, %lor.lhs.false18, %if.then12
  %21 = load i32, i32* %ch, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %22 = load i32, i32* %result, align 4
  %inc24 = add nsw i32 %22, 1
  store i32 %inc24, i32* %result, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %lor.lhs.false20
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.end9
  br label %for.inc

for.inc:                                          ; preds = %if.end26
  %23 = load i32, i32* %ch, align 4
  %inc27 = add i32 %23, 1
  store i32 %inc27, i32* %ch, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 65, i32* %ch, align 4
  %24 = load i32, i32* %ch, align 4
  %call28 = call i32 @iswupper(i32 %24) #3
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %lor.lhs.false30, label %if.then33

lor.lhs.false30:                                  ; preds = %for.end
  %25 = load i32, i32* %ch, align 4
  %call31 = call i32 @iswlower(i32 %25) #3
  %tobool32 = icmp ne i32 %call31, 0
  br i1 %tobool32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %lor.lhs.false30, %for.end
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i32, i32* %result, align 4
  %inc35 = add nsw i32 %26, 1
  store i32 %inc35, i32* %result, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %lor.lhs.false30
  store i32 97, i32* %ch, align 4
  %27 = load i32, i32* %ch, align 4
  %call37 = call i32 @iswupper(i32 %27) #3
  %tobool38 = icmp ne i32 %call37, 0
  br i1 %tobool38, label %if.then42, label %lor.lhs.false39

lor.lhs.false39:                                  ; preds = %if.end36
  %28 = load i32, i32* %ch, align 4
  %call40 = call i32 @iswlower(i32 %28) #3
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end45, label %if.then42

if.then42:                                        ; preds = %lor.lhs.false39, %if.end36
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* %result, align 4
  %inc44 = add nsw i32 %29, 1
  store i32 %inc44, i32* %result, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %lor.lhs.false39
  %call46 = call i32 @towlower(i32 65) #3
  %cmp47 = icmp ne i32 %call46, 97
  br i1 %cmp47, label %if.then48, label %if.end51

if.then48:                                        ; preds = %if.end45
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* %result, align 4
  %inc50 = add nsw i32 %30, 1
  store i32 %inc50, i32* %result, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end45
  %call52 = call i32 @towupper(i32 97) #3
  %cmp53 = icmp ne i32 %call52, 65
  br i1 %cmp53, label %if.then54, label %if.end57

if.then54:                                        ; preds = %if.end51
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %31 = load i32, i32* %result, align 4
  %inc56 = add nsw i32 %31, 1
  store i32 %inc56, i32* %result, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end51
  %32 = load i32, i32* %result, align 4
  %cmp58 = icmp eq i32 %32, 0
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end57
  %call60 = call i32 @puts(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end57
  %33 = load i32, i32* %result, align 4
  %cmp62 = icmp ne i32 %33, 0
  %conv = zext i1 %cmp62 to i32
  ret i32 %conv
}

; Function Attrs: nounwind
declare dso_local i32 @iswlower(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @towupper(i32) #1

; Function Attrs: nounwind
declare dso_local i32 @towlower(i32) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i32 @iswupper(i32) #1

declare dso_local i32 @puts(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
