; ModuleID = 'code/218-8070arecibo.c'
source_filename = "code/218-8070arecibo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"--color\00", align 1
@message = internal global [210 x i32] [i32 2, i32 168, i32 0, i32 80, i32 80, i32 18, i32 34, i32 37, i32 149, i32 85, i32 82, i32 64, i32 0, i32 0, i32 0, i32 1, i32 128, i32 0, i32 13, i32 0, i32 0, i32 26, i32 0, i32 0, i32 84, i32 0, i32 0, i32 248, i32 0, i32 0, i32 0, i32 6, i32 28, i32 97, i32 136, i32 0, i32 50, i32 26, i32 49, i32 134, i32 190, i32 251, i32 239, i32 128, i32 0, i32 0, i32 16, i32 0, i32 4, i32 0, i32 0, i32 0, i32 32, i32 0, i32 15, i32 192, i32 1, i32 240, i32 0, i32 0, i32 24, i32 97, i32 198, i32 32, i32 32, i32 8, i32 104, i32 99, i32 154, i32 251, i32 239, i32 190, i32 0, i32 0, i32 0, i32 64, i32 192, i32 16, i32 1, i32 128, i32 0, i32 131, i32 0, i32 63, i32 6, i32 7, i32 192, i32 12, i32 0, i32 16, i32 8, i32 4, i32 16, i32 48, i32 16, i32 24, i32 96, i32 64, i32 12, i32 67, i32 0, i32 1, i32 152, i32 0, i32 49, i32 12, i32 1, i32 134, i32 4, i32 4, i32 8, i32 4, i32 16, i32 24, i32 4, i32 64, i32 48, i32 8, i32 128, i32 32, i32 32, i32 128, i32 128, i32 128, i32 128, i32 6, i32 0, i32 192, i32 48, i32 4, i32 117, i32 128, i32 8, i32 8, i32 0, i32 16, i32 124, i32 0, i32 33, i32 116, i32 182, i32 4, i32 228, i32 254, i32 225, i32 193, i32 184, i32 2, i32 131, i32 178, i32 5, i32 7, i32 228, i32 10, i32 12, i32 8, i32 54, i32 0, i32 0, i32 0, i32 0, i32 56, i32 32, i32 0, i32 117, i32 21, i32 84, i32 224, i32 10, i32 160, i32 0, i32 20, i32 0, i32 15, i32 128, i32 0, i32 127, i32 192, i32 3, i32 128, i32 224, i32 12, i32 0, i32 96, i32 52, i32 1, i32 96, i32 204, i32 6, i32 97, i32 20, i32 20, i32 66, i32 36, i32 72, i32 128, i32 69, i32 16, i32 0, i32 132, i32 32, i32 1, i32 0, i32 64, i32 0, i32 148, i32 0, i32 121, i32 244, i32 240], align 16
@color_points = internal global [65 x i32] [i32 0, i32 127, i32 253, i32 608, i32 619, i32 631, i32 648, i32 654, i32 666, i32 677, i32 685, i32 700, i32 715, i32 724, i32 733, i32 746, i32 755, i32 769, i32 777, i32 793, i32 798, i32 815, i32 819, i32 839, i32 844, i32 861, i32 869, i32 884, i32 893, i32 907, i32 917, i32 930, i32 940, i32 954, i32 962, i32 976, i32 984, i32 1045, i32 1047, i32 1068, i32 1083, i32 1089, i32 1106, i32 1111, i32 1120, i32 1133, i32 1144, i32 1159, i32 1167, i32 1182, i32 1190, i32 1198, i32 1205, i32 1213, i32 1221, i32 1228, i32 1236, i32 1244, i32 1250, i32 1290, i32 1388, i32 1640, i32 1657, i32 1663, i32 1672], align 16
@.str.4 = private unnamed_addr constant [8 x i8] c"\1B[1;%dm\00", align 1
@colors = internal global [65 x i32] [i32 37, i32 35, i32 32, i32 37, i32 32, i32 37, i32 32, i32 37, i32 32, i32 37, i32 32, i32 37, i32 34, i32 37, i32 34, i32 37, i32 34, i32 37, i32 34, i32 37, i32 34, i32 37, i32 34, i32 37, i32 34, i32 37, i32 34, i32 37, i32 34, i32 37, i32 34, i32 37, i32 34, i32 37, i32 34, i32 37, i32 34, i32 31, i32 34, i32 31, i32 34, i32 31, i32 34, i32 31, i32 37, i32 31, i32 37, i32 31, i32 37, i32 31, i32 37, i32 34, i32 31, i32 37, i32 34, i32 31, i32 37, i32 34, i32 31, i32 33, i32 35, i32 37, i32 34, i32 37, i32 34], align 16
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\E2\96\A0\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"%s [options] [<rate>]\0A\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"    -c,--color  Show message part colorings\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"    -h,--help   Print this help message\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %byte = alloca i32, align 4
  %bit = alloca i32, align 4
  %bit_counter = alloca i32, align 4
  %color_counter = alloca i32, align 4
  %show_colors = alloca i32, align 4
  %sleep = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 0, i32* %rc, align 4
  store i32 0, i32* %i, align 4
  store i32 0, i32* %j, align 4
  store i32 0, i32* %k, align 4
  store i32 0, i32* %l, align 4
  store i32 0, i32* %m, align 4
  store i32 0, i32* %n, align 4
  store i32 0, i32* %byte, align 4
  store i32 0, i32* %bit, align 4
  store i32 0, i32* %bit_counter, align 4
  store i32 0, i32* %color_counter, align 4
  store i32 0, i32* %show_colors, align 4
  store i32 2000, i32* %sleep, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end28

if.then:                                          ; preds = %entry
  store i32 1, i32* %i, align 4
  %1 = load i32, i32* %argc.addr, align 4
  store i32 %1, i32* %l, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %l, align 4
  %cmp1 = icmp slt i32 %2, %3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8**, i8*** %argv.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 %idxprom
  %6 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #3
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.then7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %7 = load i8**, i8*** %argv.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %8 to i64
  %arrayidx4 = getelementptr inbounds i8*, i8** %7, i64 %idxprom3
  %9 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)) #3
  %cmp6 = icmp eq i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.else

if.then7:                                         ; preds = %lor.lhs.false, %for.body
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx8 = getelementptr inbounds i8*, i8** %10, i64 0
  %11 = load i8*, i8** %arrayidx8, align 8
  call void @usage(i8* %11)
  store i32 1, i32* %rc, align 4
  br label %end_transmission

if.else:                                          ; preds = %lor.lhs.false
  %12 = load i8**, i8*** %argv.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %13 to i64
  %arrayidx10 = getelementptr inbounds i8*, i8** %12, i64 %idxprom9
  %14 = load i8*, i8** %arrayidx10, align 8
  %call11 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #3
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then18, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %if.else
  %15 = load i8**, i8*** %argv.addr, align 8
  %16 = load i32, i32* %i, align 4
  %idxprom14 = sext i32 %16 to i64
  %arrayidx15 = getelementptr inbounds i8*, i8** %15, i64 %idxprom14
  %17 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)) #3
  %cmp17 = icmp eq i32 %call16, 0
  br i1 %cmp17, label %if.then18, label %if.else19

if.then18:                                        ; preds = %lor.lhs.false13, %if.else
  store i32 1, i32* %show_colors, align 4
  br label %if.end26

if.else19:                                        ; preds = %lor.lhs.false13
  %18 = load i32, i32* %i, align 4
  %19 = load i32, i32* %argc.addr, align 4
  %sub = sub nsw i32 %19, 1
  %cmp20 = icmp eq i32 %18, %sub
  br i1 %cmp20, label %if.then21, label %if.end

if.then21:                                        ; preds = %if.else19
  %20 = load i8**, i8*** %argv.addr, align 8
  %21 = load i32, i32* %argc.addr, align 4
  %sub22 = sub nsw i32 %21, 1
  %idxprom23 = sext i32 %sub22 to i64
  %arrayidx24 = getelementptr inbounds i8*, i8** %20, i64 %idxprom23
  %22 = load i8*, i8** %arrayidx24, align 8
  %call25 = call i32 @atoi(i8* %22) #3
  store i32 %call25, i32* %sleep, align 4
  br label %if.end

if.end:                                           ; preds = %if.then21, %if.else19
  br label %if.end26

if.end26:                                         ; preds = %if.end, %if.then18
  br label %if.end27

if.end27:                                         ; preds = %if.end26
  br label %for.inc

for.inc:                                          ; preds = %if.end27
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  br label %if.end28

if.end28:                                         ; preds = %for.end, %entry
  store i32 0, i32* %i, align 4
  store i32 210, i32* %j, align 4
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc73, %if.end28
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %j, align 4
  %cmp30 = icmp slt i32 %24, %25
  br i1 %cmp30, label %for.body31, label %for.end75

for.body31:                                       ; preds = %for.cond29
  %26 = load i32, i32* %i, align 4
  %idxprom32 = sext i32 %26 to i64
  %arrayidx33 = getelementptr inbounds [210 x i32], [210 x i32]* @message, i64 0, i64 %idxprom32
  %27 = load i32, i32* %arrayidx33, align 4
  store i32 %27, i32* %byte, align 4
  store i32 0, i32* %k, align 4
  store i32 8, i32* %l, align 4
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc70, %for.body31
  %28 = load i32, i32* %k, align 4
  %29 = load i32, i32* %l, align 4
  %cmp35 = icmp slt i32 %28, %29
  br i1 %cmp35, label %for.body36, label %for.end72

for.body36:                                       ; preds = %for.cond34
  %30 = load i32, i32* %byte, align 4
  %31 = load i32, i32* %k, align 4
  %sub37 = sub nsw i32 7, %31
  %shr = ashr i32 %30, %sub37
  %and = and i32 %shr, 1
  store i32 %and, i32* %bit, align 4
  %32 = load i32, i32* %show_colors, align 4
  %cmp38 = icmp ne i32 %32, 0
  br i1 %cmp38, label %if.then39, label %if.end55

if.then39:                                        ; preds = %for.body36
  store i32 0, i32* %m, align 4
  store i32 65, i32* %n, align 4
  br label %for.cond40

for.cond40:                                       ; preds = %for.inc52, %if.then39
  %33 = load i32, i32* %m, align 4
  %34 = load i32, i32* %n, align 4
  %cmp41 = icmp slt i32 %33, %34
  br i1 %cmp41, label %for.body42, label %for.end54

for.body42:                                       ; preds = %for.cond40
  %35 = load i32, i32* %bit_counter, align 4
  %36 = load i32, i32* %m, align 4
  %idxprom43 = sext i32 %36 to i64
  %arrayidx44 = getelementptr inbounds [65 x i32], [65 x i32]* @color_points, i64 0, i64 %idxprom43
  %37 = load i32, i32* %arrayidx44, align 4
  %cmp45 = icmp eq i32 %35, %37
  br i1 %cmp45, label %if.then46, label %if.end51

if.then46:                                        ; preds = %for.body42
  %38 = load i32, i32* %color_counter, align 4
  %idxprom47 = sext i32 %38 to i64
  %arrayidx48 = getelementptr inbounds [65 x i32], [65 x i32]* @colors, i64 0, i64 %idxprom47
  %39 = load i32, i32* %arrayidx48, align 4
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  %40 = load i32, i32* %color_counter, align 4
  %inc50 = add nsw i32 %40, 1
  store i32 %inc50, i32* %color_counter, align 4
  br label %for.end54

if.end51:                                         ; preds = %for.body42
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %41 = load i32, i32* %m, align 4
  %inc53 = add nsw i32 %41, 1
  store i32 %inc53, i32* %m, align 4
  br label %for.cond40, !llvm.loop !6

for.end54:                                        ; preds = %if.then46, %for.cond40
  br label %if.end55

if.end55:                                         ; preds = %for.end54, %for.body36
  %42 = load i32, i32* %bit, align 4
  %cmp56 = icmp eq i32 %42, 1
  %43 = zext i1 %cmp56 to i64
  %cond = select i1 %cmp56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0)
  %call57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %cond)
  %44 = load i32, i32* %bit_counter, align 4
  %add = add nsw i32 %44, 1
  %rem = srem i32 %add, 23
  %cmp58 = icmp eq i32 %rem, 0
  br i1 %cmp58, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end55
  %call60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %if.end55
  %45 = load i32, i32* %bit_counter, align 4
  %cmp62 = icmp eq i32 %45, 1679
  br i1 %cmp62, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end61
  br label %end_transmission

if.end64:                                         ; preds = %if.end61
  %46 = load i32, i32* %bit_counter, align 4
  %inc65 = add nsw i32 %46, 1
  store i32 %inc65, i32* %bit_counter, align 4
  %47 = load i32, i32* %sleep, align 4
  %cmp66 = icmp sgt i32 %47, 0
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.end64
  %48 = load i32, i32* %sleep, align 4
  %call68 = call i32 @usleep(i32 %48)
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.end64
  br label %for.inc70

for.inc70:                                        ; preds = %if.end69
  %49 = load i32, i32* %k, align 4
  %inc71 = add nsw i32 %49, 1
  store i32 %inc71, i32* %k, align 4
  br label %for.cond34, !llvm.loop !7

for.end72:                                        ; preds = %for.cond34
  br label %for.inc73

for.inc73:                                        ; preds = %for.end72
  %50 = load i32, i32* %i, align 4
  %inc74 = add nsw i32 %50, 1
  store i32 %inc74, i32* %i, align 4
  br label %for.cond29, !llvm.loop !8

for.end75:                                        ; preds = %for.cond29
  br label %end_transmission

end_transmission:                                 ; preds = %for.end75, %if.then63, %if.then7
  %call76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %51 = load i32, i32* %rc, align 4
  ret i32 %51
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %exec) #0 {
entry:
  %exec.addr = alloca i8*, align 8
  store i8* %exec, i8** %exec.addr, align 8
  %0 = load i8*, i8** %exec.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i8* %0)
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @usleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
