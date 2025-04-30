; ModuleID = 'code/223-32251test-ctype.c'
source_filename = "code/223-32251test-ctype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"chr#%-4d%2c%6s%6s%6s%6s%6s%6s%6s%6s%6s%6s%6s%4c%4c\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"Successfulle set locale to %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [196 x i8] c"Cannot setup locale. Either your libc does not provide\0Alocale support, or your locale data is corrupt, or you have not set\0ALANG or LC_CTYPE environment variable to proper value. Program aborted.\0A\00", align 1
@.str.6 = private unnamed_addr constant [86 x i8] c"char#  char alnum alpha cntrl digit lower graph print punct space upper xdigit lo up\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @flag(i32 %b) #0 {
entry:
  %b.addr = alloca i32, align 4
  store i32 %b, i32* %b.addr, align 4
  %0 = load i32, i32* %b.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %1 = zext i1 %tobool to i64
  %cond = select i1 %tobool, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  ret i8* %cond
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @describe_char(i32 %c) #0 {
entry:
  %c.addr = alloca i32, align 4
  %cp = alloca i8, align 1
  %up = alloca i8, align 1
  %lo = alloca i8, align 1
  store i32 %c, i32* %c.addr, align 4
  %0 = load i32, i32* %c.addr, align 4
  %conv = trunc i32 %0 to i8
  store i8 %conv, i8* %cp, align 1
  %1 = load i32, i32* %c.addr, align 4
  %call = call i32 @toupper(i32 %1) #5
  %conv1 = trunc i32 %call to i8
  store i8 %conv1, i8* %up, align 1
  %2 = load i32, i32* %c.addr, align 4
  %call2 = call i32 @tolower(i32 %2) #5
  %conv3 = trunc i32 %call2 to i8
  store i8 %conv3, i8* %lo, align 1
  %call4 = call i16** @__ctype_b_loc() #6
  %3 = load i16*, i16** %call4, align 8
  %4 = load i8, i8* %cp, align 1
  %conv5 = zext i8 %4 to i32
  %idxprom = sext i32 %conv5 to i64
  %arrayidx = getelementptr inbounds i16, i16* %3, i64 %idxprom
  %5 = load i16, i16* %arrayidx, align 2
  %conv6 = zext i16 %5 to i32
  %and = and i32 %conv6, 16384
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i8 32, i8* %cp, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call7 = call i16** @__ctype_b_loc() #6
  %6 = load i16*, i16** %call7, align 8
  %7 = load i8, i8* %up, align 1
  %conv8 = zext i8 %7 to i32
  %idxprom9 = sext i32 %conv8 to i64
  %arrayidx10 = getelementptr inbounds i16, i16* %6, i64 %idxprom9
  %8 = load i16, i16* %arrayidx10, align 2
  %conv11 = zext i16 %8 to i32
  %and12 = and i32 %conv11, 16384
  %tobool13 = icmp ne i32 %and12, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %if.end
  store i8 32, i8* %up, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.end
  %call16 = call i16** @__ctype_b_loc() #6
  %9 = load i16*, i16** %call16, align 8
  %10 = load i8, i8* %lo, align 1
  %conv17 = zext i8 %10 to i32
  %idxprom18 = sext i32 %conv17 to i64
  %arrayidx19 = getelementptr inbounds i16, i16* %9, i64 %idxprom18
  %11 = load i16, i16* %arrayidx19, align 2
  %conv20 = zext i16 %11 to i32
  %and21 = and i32 %conv20, 16384
  %tobool22 = icmp ne i32 %and21, 0
  br i1 %tobool22, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end15
  store i8 32, i8* %lo, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end15
  %12 = load i32, i32* %c.addr, align 4
  %13 = load i8, i8* %cp, align 1
  %conv25 = zext i8 %13 to i32
  %call26 = call i16** @__ctype_b_loc() #6
  %14 = load i16*, i16** %call26, align 8
  %15 = load i32, i32* %c.addr, align 4
  %idxprom27 = sext i32 %15 to i64
  %arrayidx28 = getelementptr inbounds i16, i16* %14, i64 %idxprom27
  %16 = load i16, i16* %arrayidx28, align 2
  %conv29 = zext i16 %16 to i32
  %and30 = and i32 %conv29, 8
  %call31 = call i8* @flag(i32 %and30)
  %call32 = call i16** @__ctype_b_loc() #6
  %17 = load i16*, i16** %call32, align 8
  %18 = load i32, i32* %c.addr, align 4
  %idxprom33 = sext i32 %18 to i64
  %arrayidx34 = getelementptr inbounds i16, i16* %17, i64 %idxprom33
  %19 = load i16, i16* %arrayidx34, align 2
  %conv35 = zext i16 %19 to i32
  %and36 = and i32 %conv35, 1024
  %call37 = call i8* @flag(i32 %and36)
  %call38 = call i16** @__ctype_b_loc() #6
  %20 = load i16*, i16** %call38, align 8
  %21 = load i32, i32* %c.addr, align 4
  %idxprom39 = sext i32 %21 to i64
  %arrayidx40 = getelementptr inbounds i16, i16* %20, i64 %idxprom39
  %22 = load i16, i16* %arrayidx40, align 2
  %conv41 = zext i16 %22 to i32
  %and42 = and i32 %conv41, 2
  %call43 = call i8* @flag(i32 %and42)
  %call44 = call i16** @__ctype_b_loc() #6
  %23 = load i16*, i16** %call44, align 8
  %24 = load i32, i32* %c.addr, align 4
  %idxprom45 = sext i32 %24 to i64
  %arrayidx46 = getelementptr inbounds i16, i16* %23, i64 %idxprom45
  %25 = load i16, i16* %arrayidx46, align 2
  %conv47 = zext i16 %25 to i32
  %and48 = and i32 %conv47, 2048
  %call49 = call i8* @flag(i32 %and48)
  %call50 = call i16** @__ctype_b_loc() #6
  %26 = load i16*, i16** %call50, align 8
  %27 = load i32, i32* %c.addr, align 4
  %idxprom51 = sext i32 %27 to i64
  %arrayidx52 = getelementptr inbounds i16, i16* %26, i64 %idxprom51
  %28 = load i16, i16* %arrayidx52, align 2
  %conv53 = zext i16 %28 to i32
  %and54 = and i32 %conv53, 512
  %call55 = call i8* @flag(i32 %and54)
  %call56 = call i16** @__ctype_b_loc() #6
  %29 = load i16*, i16** %call56, align 8
  %30 = load i32, i32* %c.addr, align 4
  %idxprom57 = sext i32 %30 to i64
  %arrayidx58 = getelementptr inbounds i16, i16* %29, i64 %idxprom57
  %31 = load i16, i16* %arrayidx58, align 2
  %conv59 = zext i16 %31 to i32
  %and60 = and i32 %conv59, 32768
  %call61 = call i8* @flag(i32 %and60)
  %call62 = call i16** @__ctype_b_loc() #6
  %32 = load i16*, i16** %call62, align 8
  %33 = load i32, i32* %c.addr, align 4
  %idxprom63 = sext i32 %33 to i64
  %arrayidx64 = getelementptr inbounds i16, i16* %32, i64 %idxprom63
  %34 = load i16, i16* %arrayidx64, align 2
  %conv65 = zext i16 %34 to i32
  %and66 = and i32 %conv65, 16384
  %call67 = call i8* @flag(i32 %and66)
  %call68 = call i16** @__ctype_b_loc() #6
  %35 = load i16*, i16** %call68, align 8
  %36 = load i32, i32* %c.addr, align 4
  %idxprom69 = sext i32 %36 to i64
  %arrayidx70 = getelementptr inbounds i16, i16* %35, i64 %idxprom69
  %37 = load i16, i16* %arrayidx70, align 2
  %conv71 = zext i16 %37 to i32
  %and72 = and i32 %conv71, 4
  %call73 = call i8* @flag(i32 %and72)
  %call74 = call i16** @__ctype_b_loc() #6
  %38 = load i16*, i16** %call74, align 8
  %39 = load i32, i32* %c.addr, align 4
  %idxprom75 = sext i32 %39 to i64
  %arrayidx76 = getelementptr inbounds i16, i16* %38, i64 %idxprom75
  %40 = load i16, i16* %arrayidx76, align 2
  %conv77 = zext i16 %40 to i32
  %and78 = and i32 %conv77, 8192
  %call79 = call i8* @flag(i32 %and78)
  %call80 = call i16** @__ctype_b_loc() #6
  %41 = load i16*, i16** %call80, align 8
  %42 = load i32, i32* %c.addr, align 4
  %idxprom81 = sext i32 %42 to i64
  %arrayidx82 = getelementptr inbounds i16, i16* %41, i64 %idxprom81
  %43 = load i16, i16* %arrayidx82, align 2
  %conv83 = zext i16 %43 to i32
  %and84 = and i32 %conv83, 256
  %call85 = call i8* @flag(i32 %and84)
  %call86 = call i16** @__ctype_b_loc() #6
  %44 = load i16*, i16** %call86, align 8
  %45 = load i32, i32* %c.addr, align 4
  %idxprom87 = sext i32 %45 to i64
  %arrayidx88 = getelementptr inbounds i16, i16* %44, i64 %idxprom87
  %46 = load i16, i16* %arrayidx88, align 2
  %conv89 = zext i16 %46 to i32
  %and90 = and i32 %conv89, 4096
  %call91 = call i8* @flag(i32 %and90)
  %47 = load i8, i8* %lo, align 1
  %conv92 = zext i8 %47 to i32
  %48 = load i8, i8* %up, align 1
  %conv93 = zext i8 %48 to i32
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %12, i32 %conv25, i8* %call31, i8* %call37, i8* %call43, i8* %call49, i8* %call55, i8* %call61, i8* %call67, i8* %call73, i8* %call79, i8* %call85, i8* %call91, i32 %conv92, i32 %conv93)
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @toupper(i32) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @tolower(i32) #1

; Function Attrs: nounwind readnone willreturn
declare dso_local i16** @__ctype_b_loc() #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %c = alloca i16, align 2
  %cur_locale = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  %call = call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)) #7
  store i8* %call, i8** %cur_locale, align 8
  %0 = load i8*, i8** %cur_locale, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** %cur_locale, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %2)
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([196 x i8], [196 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.then
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.6, i64 0, i64 0))
  store i16 0, i16* %c, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i16, i16* %c, align 2
  %conv = sext i16 %4 to i32
  %cmp = icmp sle i32 %conv, 255
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i16, i16* %c, align 2
  %conv5 = sext i16 %5 to i32
  call void @describe_char(i32 %conv5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i16, i16* %c, align 2
  %inc = add i16 %6, 1
  store i16 %inc, i16* %c, align 2
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.else
  %7 = load i32, i32* %retval, align 4
  ret i32 %7
}

; Function Attrs: nounwind
declare dso_local i8* @setlocale(i32, i8*) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
