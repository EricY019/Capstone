; ModuleID = 'code/090-3740ex4.c'
source_filename = "code/090-3740ex4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.main.first_name = private unnamed_addr constant [6 x i8] c"Jonas\00", align 1
@__const.main.last_name = private unnamed_addr constant [10 x i8] c"Libbrecht\00", align 1
@__const.main.myarray = private unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 3, i32 4], align 16
@.str = private unnamed_addr constant [7 x i8] c"foobar\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"jonaslibbrecht\00", align 1
@__const.main.array_of_strings = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str.3 = private unnamed_addr constant [20 x i8] c"I am %d years old.\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"I am %f meter tall.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"I have an initial %c \0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"I have a firstname %s \0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"I have a lastname %s \0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"I have %f amount of power \0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"My whole name is %s %c. %s \0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Amount of arguments %d \0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Argument %d: %s \0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Size of array `myarray` %lo\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"array item %d value %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"an integer is %lo bytes large\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"a double is %lo bytes large\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"this char is %lo bytes large\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"this char type is %lo bytes large\0A\00", align 1
@.str.18 = private unnamed_addr constant [45 x i8] c"amount of strings in `array_of_strings` %lo\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"item %d with value %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"while number %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"my happy number %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"my sad number %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"He chose the letter A!\0A\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"He chose the letter B!\0A\00", align 1
@.str.25 = private unnamed_addr constant [35 x i8] c"He chose poorly, he chose nothing\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %age = alloca i32, align 4
  %height = alloca double, align 8
  %power = alloca float, align 4
  %initial = alloca i8, align 1
  %first_name = alloca [6 x i8], align 1
  %last_name = alloca [10 x i8], align 1
  %myarray = alloca [4 x i32], align 16
  %array_of_strings = alloca [3 x i8*], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  %letter = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 22, i32* %age, align 4
  store double 1.800000e+00, double* %height, align 8
  store float 0x4002C28F60000000, float* %power, align 4
  store i8 71, i8* %initial, align 1
  %0 = bitcast [6 x i8]* %first_name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.main.first_name, i32 0, i32 0), i64 6, i1 false)
  %1 = bitcast [10 x i8]* %last_name to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 getelementptr inbounds ([10 x i8], [10 x i8]* @__const.main.last_name, i32 0, i32 0), i64 10, i1 false)
  %2 = bitcast [4 x i32]* %myarray to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([4 x i32]* @__const.main.myarray to i8*), i64 16, i1 false)
  %3 = bitcast [3 x i8*]* %array_of_strings to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([3 x i8*]* @__const.main.array_of_strings to i8*), i64 24, i1 false)
  %4 = load i32, i32* %age, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %4)
  %5 = load double, double* %height, align 8
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), double %5)
  %6 = load i8, i8* %initial, align 1
  %conv = sext i8 %6 to i32
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %conv)
  %arraydecay = getelementptr inbounds [6 x i8], [6 x i8]* %first_name, i64 0, i64 0
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %arraydecay)
  %arraydecay4 = getelementptr inbounds [10 x i8], [10 x i8]* %last_name, i64 0, i64 0
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8* %arraydecay4)
  %7 = load float, float* %power, align 4
  %conv6 = fpext float %7 to double
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), double %conv6)
  %arraydecay8 = getelementptr inbounds [6 x i8], [6 x i8]* %first_name, i64 0, i64 0
  %8 = load i8, i8* %initial, align 1
  %conv9 = sext i8 %8 to i32
  %arraydecay10 = getelementptr inbounds [10 x i8], [10 x i8]* %last_name, i64 0, i64 0
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %arraydecay8, i32 %conv9, i8* %arraydecay10)
  %9 = load i32, i32* %argc.addr, align 4
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0), i32 %9)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32, i32* %i, align 4
  %11 = load i32, i32* %argc.addr, align 4
  %cmp = icmp slt i32 %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4
  %13 = load i8**, i8*** %argv.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom = sext i32 %14 to i64
  %arrayidx = getelementptr inbounds i8*, i8** %13, i64 %idxprom
  %15 = load i8*, i8** %arrayidx, align 8
  %call14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %12, i8* %15)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4
  %inc = add nsw i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i64 4)
  store i32 0, i32* %j, align 4
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %for.end
  %17 = load i32, i32* %j, align 4
  %conv17 = sext i32 %17 to i64
  %cmp18 = icmp ult i64 %conv17, 4
  br i1 %cmp18, label %for.body20, label %for.end26

for.body20:                                       ; preds = %for.cond16
  %18 = load i32, i32* %j, align 4
  %19 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %19 to i64
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %myarray, i64 0, i64 %idxprom21
  %20 = load i32, i32* %arrayidx22, align 4
  %call23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %18, i32 %20)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body20
  %21 = load i32, i32* %j, align 4
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, i32* %j, align 4
  br label %for.cond16, !llvm.loop !6

for.end26:                                        ; preds = %for.cond16
  %call27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0), i64 4)
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i64 8)
  %call29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i64 6)
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i64 10)
  %call31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i64 1)
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.18, i64 0, i64 0), i64 3)
  store i32 0, i32* %x, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc41, %for.end26
  %22 = load i32, i32* %x, align 4
  %conv34 = sext i32 %22 to i64
  %cmp35 = icmp ult i64 %conv34, 3
  br i1 %cmp35, label %for.body37, label %for.end43

for.body37:                                       ; preds = %for.cond33
  %23 = load i32, i32* %x, align 4
  %24 = load i32, i32* %x, align 4
  %idxprom38 = sext i32 %24 to i64
  %arrayidx39 = getelementptr inbounds [3 x i8*], [3 x i8*]* %array_of_strings, i64 0, i64 %idxprom38
  %25 = load i8*, i8** %arrayidx39, align 8
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i64 0, i64 0), i32 %23, i8* %25)
  br label %for.inc41

for.inc41:                                        ; preds = %for.body37
  %26 = load i32, i32* %x, align 4
  %inc42 = add nsw i32 %26, 1
  store i32 %inc42, i32* %x, align 4
  br label %for.cond33, !llvm.loop !7

for.end43:                                        ; preds = %for.cond33
  store i32 5, i32* %y, align 4
  store i32 0, i32* %z, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.end43
  %27 = load i32, i32* %z, align 4
  %28 = load i32, i32* %y, align 4
  %cmp44 = icmp slt i32 %27, %28
  br i1 %cmp44, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %29 = load i32, i32* %z, align 4
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 %29)
  %30 = load i32, i32* %z, align 4
  %inc47 = add nsw i32 %30, 1
  store i32 %inc47, i32* %z, align 4
  %31 = load i32, i32* %z, align 4
  %cmp48 = icmp eq i32 %31, 4
  br i1 %cmp48, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %32 = load i32, i32* %z, align 4
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %32)
  br label %if.end

if.else:                                          ; preds = %while.body
  %33 = load i32, i32* %z, align 4
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %33)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  store i8 66, i8* %letter, align 1
  %34 = load i8, i8* %letter, align 1
  %conv52 = sext i8 %34 to i32
  switch i32 %conv52, label %sw.default [
    i32 65, label %sw.bb
    i32 66, label %sw.bb54
  ]

sw.bb:                                            ; preds = %while.end
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0))
  br label %sw.bb54

sw.bb54:                                          ; preds = %while.end, %sw.bb
  %call55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  br label %sw.default

sw.default:                                       ; preds = %while.end, %sw.bb54
  %call56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.25, i64 0, i64 0))
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly nofree nounwind willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
