; ModuleID = 'code/168-25017gentbl.c'
source_filename = "code/168-25017gentbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"BYTE CharTable[256] =\0A{\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" | \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"CT_DIGIT\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"CT_XDIGIT\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"CT_AF_LOW\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"CT_AF_UP\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"CT_SPACE\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"CT_ID_START\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"CT_IDENT\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c" // '%c' = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %has = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 256
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %has, align 4
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %call2 = call i16** @__ctype_b_loc() #3
  %1 = load i16*, i16** %call2, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i16, i16* %1, i64 %idxprom
  %3 = load i16, i16* %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 2048
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end7

if.then:                                          ; preds = %for.body
  %4 = load i32, i32* %has, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %has, align 4
  %tobool3 = icmp ne i32 %4, 0
  br i1 %tobool3, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.then
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %if.end7

if.end7:                                          ; preds = %if.end, %for.body
  %call8 = call i16** @__ctype_b_loc() #3
  %5 = load i16*, i16** %call8, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds i16, i16* %5, i64 %idxprom9
  %7 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %7 to i32
  %and12 = and i32 %conv11, 4096
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.then14, label %if.end21

if.then14:                                        ; preds = %if.end7
  %8 = load i32, i32* %has, align 4
  %inc15 = add nsw i32 %8, 1
  store i32 %inc15, i32* %has, align 4
  %tobool16 = icmp ne i32 %8, 0
  br i1 %tobool16, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.then14
  %call18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then14
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end7
  %9 = load i32, i32* %i, align 4
  %cmp22 = icmp sge i32 %9, 97
  br i1 %cmp22, label %land.lhs.true, label %if.end33

land.lhs.true:                                    ; preds = %if.end21
  %10 = load i32, i32* %i, align 4
  %cmp24 = icmp sle i32 %10, 102
  br i1 %cmp24, label %if.then26, label %if.end33

if.then26:                                        ; preds = %land.lhs.true
  %11 = load i32, i32* %has, align 4
  %inc27 = add nsw i32 %11, 1
  store i32 %inc27, i32* %has, align 4
  %tobool28 = icmp ne i32 %11, 0
  br i1 %tobool28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.then26
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.then26
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %if.end33

if.end33:                                         ; preds = %if.end31, %land.lhs.true, %if.end21
  %12 = load i32, i32* %i, align 4
  %cmp34 = icmp sge i32 %12, 65
  br i1 %cmp34, label %land.lhs.true36, label %if.end46

land.lhs.true36:                                  ; preds = %if.end33
  %13 = load i32, i32* %i, align 4
  %cmp37 = icmp sle i32 %13, 70
  br i1 %cmp37, label %if.then39, label %if.end46

if.then39:                                        ; preds = %land.lhs.true36
  %14 = load i32, i32* %has, align 4
  %inc40 = add nsw i32 %14, 1
  store i32 %inc40, i32* %has, align 4
  %tobool41 = icmp ne i32 %14, 0
  br i1 %tobool41, label %if.then42, label %if.end44

if.then42:                                        ; preds = %if.then39
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.then39
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  br label %if.end46

if.end46:                                         ; preds = %if.end44, %land.lhs.true36, %if.end33
  %call47 = call i16** @__ctype_b_loc() #3
  %15 = load i16*, i16** %call47, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom48 = sext i32 %16 to i64
  %arrayidx49 = getelementptr inbounds i16, i16* %15, i64 %idxprom48
  %17 = load i16, i16* %arrayidx49, align 2
  %conv50 = zext i16 %17 to i32
  %and51 = and i32 %conv50, 8192
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then53, label %if.end60

if.then53:                                        ; preds = %if.end46
  %18 = load i32, i32* %has, align 4
  %inc54 = add nsw i32 %18, 1
  store i32 %inc54, i32* %has, align 4
  %tobool55 = icmp ne i32 %18, 0
  br i1 %tobool55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.then53
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.then53
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %if.end60

if.end60:                                         ; preds = %if.end58, %if.end46
  %call61 = call i16** @__ctype_b_loc() #3
  %19 = load i16*, i16** %call61, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom62 = sext i32 %20 to i64
  %arrayidx63 = getelementptr inbounds i16, i16* %19, i64 %idxprom62
  %21 = load i16, i16* %arrayidx63, align 2
  %conv64 = zext i16 %21 to i32
  %and65 = and i32 %conv64, 1024
  %tobool66 = icmp ne i32 %and65, 0
  br i1 %tobool66, label %if.then75, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end60
  %22 = load i32, i32* %i, align 4
  %cmp67 = icmp eq i32 %22, 95
  br i1 %cmp67, label %if.then75, label %lor.lhs.false69

lor.lhs.false69:                                  ; preds = %lor.lhs.false
  %23 = load i32, i32* %i, align 4
  %cmp70 = icmp eq i32 %23, 63
  br i1 %cmp70, label %if.then75, label %lor.lhs.false72

lor.lhs.false72:                                  ; preds = %lor.lhs.false69
  %24 = load i32, i32* %i, align 4
  %cmp73 = icmp eq i32 %24, 36
  br i1 %cmp73, label %if.then75, label %if.end82

if.then75:                                        ; preds = %lor.lhs.false72, %lor.lhs.false69, %lor.lhs.false, %if.end60
  %25 = load i32, i32* %has, align 4
  %inc76 = add nsw i32 %25, 1
  store i32 %inc76, i32* %has, align 4
  %tobool77 = icmp ne i32 %25, 0
  br i1 %tobool77, label %if.then78, label %if.end80

if.then78:                                        ; preds = %if.then75
  %call79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.then75
  %call81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end82

if.end82:                                         ; preds = %if.end80, %lor.lhs.false72
  %call83 = call i16** @__ctype_b_loc() #3
  %26 = load i16*, i16** %call83, align 8
  %27 = load i32, i32* %i, align 4
  %idxprom84 = sext i32 %27 to i64
  %arrayidx85 = getelementptr inbounds i16, i16* %26, i64 %idxprom84
  %28 = load i16, i16* %arrayidx85, align 2
  %conv86 = zext i16 %28 to i32
  %and87 = and i32 %conv86, 8
  %tobool88 = icmp ne i32 %and87, 0
  br i1 %tobool88, label %if.then98, label %lor.lhs.false89

lor.lhs.false89:                                  ; preds = %if.end82
  %29 = load i32, i32* %i, align 4
  %cmp90 = icmp eq i32 %29, 95
  br i1 %cmp90, label %if.then98, label %lor.lhs.false92

lor.lhs.false92:                                  ; preds = %lor.lhs.false89
  %30 = load i32, i32* %i, align 4
  %cmp93 = icmp eq i32 %30, 63
  br i1 %cmp93, label %if.then98, label %lor.lhs.false95

lor.lhs.false95:                                  ; preds = %lor.lhs.false92
  %31 = load i32, i32* %i, align 4
  %cmp96 = icmp eq i32 %31, 36
  br i1 %cmp96, label %if.then98, label %if.end105

if.then98:                                        ; preds = %lor.lhs.false95, %lor.lhs.false92, %lor.lhs.false89, %if.end82
  %32 = load i32, i32* %has, align 4
  %inc99 = add nsw i32 %32, 1
  store i32 %inc99, i32* %has, align 4
  %tobool100 = icmp ne i32 %32, 0
  br i1 %tobool100, label %if.then101, label %if.end103

if.then101:                                       ; preds = %if.then98
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.then98
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  br label %if.end105

if.end105:                                        ; preds = %if.end103, %lor.lhs.false95
  %33 = load i32, i32* %has, align 4
  %tobool106 = icmp ne i32 %33, 0
  br i1 %tobool106, label %if.end109, label %if.then107

if.then107:                                       ; preds = %if.end105
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end105
  %34 = load i32, i32* %i, align 4
  %cmp110 = icmp eq i32 %34, 255
  %35 = zext i1 %cmp110 to i64
  %cond = select i1 %cmp110, i32 32, i32 44
  %call112 = call i32 @putchar(i32 %cond)
  %36 = load i32, i32* %i, align 4
  %cmp113 = icmp sgt i32 %36, 31
  br i1 %cmp113, label %land.lhs.true115, label %cond.false

land.lhs.true115:                                 ; preds = %if.end109
  %37 = load i32, i32* %i, align 4
  %cmp116 = icmp slt i32 %37, 128
  br i1 %cmp116, label %cond.true, label %cond.false

cond.true:                                        ; preds = %land.lhs.true115
  %38 = load i32, i32* %i, align 4
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true115, %if.end109
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond118 = phi i32 [ %38, %cond.true ], [ 46, %cond.false ]
  %39 = load i32, i32* %i, align 4
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %cond118, i32 %39)
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %40 = load i32, i32* %i, align 4
  %inc120 = add nsw i32 %40, 1
  store i32 %inc120, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

declare dso_local i32 @putchar(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
