; ModuleID = 'code/131-24721mktest.c'
source_filename = "code/131-24721mktest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @rc() #0 {
entry:
  %retval = alloca i8, align 1
  %k = alloca i32, align 4
  %call = call i32 @rand() #4
  %rem = srem i32 %call, 4
  store i32 %rem, i32* %k, align 4
  %0 = load i32, i32* %k, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 97, i8* %retval, align 1
  br label %return

if.else:                                          ; preds = %entry
  %1 = load i32, i32* %k, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  store i8 99, i8* %retval, align 1
  br label %return

if.else3:                                         ; preds = %if.else
  %2 = load i32, i32* %k, align 4
  %cmp4 = icmp eq i32 %2, 2
  br i1 %cmp4, label %if.then5, label %if.else6

if.then5:                                         ; preds = %if.else3
  store i8 103, i8* %retval, align 1
  br label %return

if.else6:                                         ; preds = %if.else3
  %3 = load i32, i32* %k, align 4
  %cmp7 = icmp eq i32 %3, 3
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.else6
  store i8 116, i8* %retval, align 1
  br label %return

if.end:                                           ; preds = %if.else6
  br label %if.end9

if.end9:                                          ; preds = %if.end
  br label %if.end10

if.end10:                                         ; preds = %if.end9
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  store i8 0, i8* %retval, align 1
  br label %return

return:                                           ; preds = %if.end11, %if.then8, %if.then5, %if.then2, %if.then
  %4 = load i8, i8* %retval, align 1
  ret i8 %4
}

; Function Attrs: nounwind
declare dso_local i32 @rand() #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %z = alloca i32, align 4
  %p = alloca double, align 8
  %P = alloca double, align 8
  %seed = alloca i64, align 8
  %pair = alloca i32, align 4
  %n_pair = alloca i32, align 4
  %a = alloca i8*, align 8
  %b = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store double 1.000000e-02, double* %P, align 8
  store i64 -1, i64* %seed, align 8
  store i32 1, i32* %n_pair, align 4
  store i32 10000, i32* %n, align 4
  %0 = load i32, i32* %argc.addr, align 4
  %cmp = icmp sgt i32 %0, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 1
  %2 = load i8*, i8** %arrayidx, align 8
  %call = call i32 @atoi(i8* %2) #5
  store i32 %call, i32* %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %argc.addr, align 4
  %cmp1 = icmp sgt i32 %3, 2
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.end
  %4 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 2
  %5 = load i8*, i8** %arrayidx3, align 8
  %call4 = call i32 @atoi(i8* %5) #5
  %conv = sext i32 %call4 to i64
  store i64 %conv, i64* %seed, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end
  %6 = load i32, i32* %argc.addr, align 4
  %cmp6 = icmp sgt i32 %6, 3
  br i1 %cmp6, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  %7 = load i8**, i8*** %argv.addr, align 8
  %arrayidx9 = getelementptr inbounds i8*, i8** %7, i64 3
  %8 = load i8*, i8** %arrayidx9, align 8
  %call10 = call double @atof(i8* %8) #5
  store double %call10, double* %P, align 8
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5
  %9 = load i32, i32* %argc.addr, align 4
  %cmp12 = icmp sgt i32 %9, 4
  br i1 %cmp12, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end11
  %10 = load i8**, i8*** %argv.addr, align 8
  %arrayidx15 = getelementptr inbounds i8*, i8** %10, i64 4
  %11 = load i8*, i8** %arrayidx15, align 8
  %call16 = call i32 @atoi(i8* %11) #5
  store i32 %call16, i32* %n_pair, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end11
  %12 = load i64, i64* %seed, align 8
  %cmp18 = icmp sge i64 %12, 0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end17
  %13 = load i64, i64* %seed, align 8
  %conv21 = trunc i64 %13 to i32
  call void @srand(i32 %conv21) #4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end17
  %14 = load i32, i32* %n, align 4
  %add = add nsw i32 %14, 1
  %conv23 = sext i32 %add to i64
  %mul = mul i64 1, %conv23
  %call24 = call noalias align 16 i8* @malloc(i64 %mul) #4
  store i8* %call24, i8** %a, align 8
  %15 = load i8*, i8** %a, align 8
  %16 = load i32, i32* %n, align 4
  %idxprom = sext i32 %16 to i64
  %arrayidx25 = getelementptr inbounds i8, i8* %15, i64 %idxprom
  store i8 0, i8* %arrayidx25, align 1
  store i32 0, i32* %pair, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc78, %if.end22
  %17 = load i32, i32* %pair, align 4
  %18 = load i32, i32* %n_pair, align 4
  %cmp26 = icmp slt i32 %17, %18
  br i1 %cmp26, label %for.body, label %for.end80

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc, %for.body
  %19 = load i32, i32* %i, align 4
  %20 = load i32, i32* %n, align 4
  %cmp29 = icmp slt i32 %19, %20
  br i1 %cmp29, label %for.body31, label %for.end

for.body31:                                       ; preds = %for.cond28
  %call32 = call signext i8 @rc()
  %21 = load i8*, i8** %a, align 8
  %22 = load i32, i32* %i, align 4
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds i8, i8* %21, i64 %idxprom33
  store i8 %call32, i8* %arrayidx34, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body31
  %23 = load i32, i32* %i, align 4
  %inc = add nsw i32 %23, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond28, !llvm.loop !4

for.end:                                          ; preds = %for.cond28
  %24 = load i8*, i8** %a, align 8
  %call35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 0, i32* %i, align 4
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc74, %for.end
  %25 = load i32, i32* %i, align 4
  %26 = load i32, i32* %n, align 4
  %cmp37 = icmp slt i32 %25, %26
  br i1 %cmp37, label %for.body39, label %for.end76

for.body39:                                       ; preds = %for.cond36
  %call40 = call i32 @rand() #4
  %conv41 = sitofp i32 %call40 to double
  %div = fdiv double %conv41, 0x41E0000000000000
  store double %div, double* %p, align 8
  %27 = load double, double* %p, align 8
  %28 = load double, double* %P, align 8
  %cmp42 = fcmp olt double %27, %28
  br i1 %cmp42, label %if.then44, label %if.else68

if.then44:                                        ; preds = %for.body39
  %call45 = call i32 @rand() #4
  %rem = srem i32 %call45, 3
  store i32 %rem, i32* %k, align 4
  %29 = load i32, i32* %k, align 4
  %cmp46 = icmp eq i32 %29, 0
  br i1 %cmp46, label %if.then48, label %if.else

if.then48:                                        ; preds = %if.then44
  %call49 = call signext i8 @rc()
  %conv50 = sext i8 %call49 to i32
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %conv50)
  br label %if.end67

if.else:                                          ; preds = %if.then44
  %30 = load i32, i32* %k, align 4
  %cmp52 = icmp eq i32 %30, 1
  br i1 %cmp52, label %if.then54, label %if.else55

if.then54:                                        ; preds = %if.else
  br label %for.inc74

if.else55:                                        ; preds = %if.else
  %31 = load i32, i32* %k, align 4
  %cmp56 = icmp eq i32 %31, 2
  br i1 %cmp56, label %if.then58, label %if.end65

if.then58:                                        ; preds = %if.else55
  %32 = load i8*, i8** %a, align 8
  %33 = load i32, i32* %i, align 4
  %idxprom59 = sext i32 %33 to i64
  %arrayidx60 = getelementptr inbounds i8, i8* %32, i64 %idxprom59
  %34 = load i8, i8* %arrayidx60, align 1
  %conv61 = sext i8 %34 to i32
  %call62 = call signext i8 @rc()
  %conv63 = sext i8 %call62 to i32
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %conv61, i32 %conv63)
  br label %if.end65

if.end65:                                         ; preds = %if.then58, %if.else55
  br label %if.end66

if.end66:                                         ; preds = %if.end65
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then48
  br label %if.end73

if.else68:                                        ; preds = %for.body39
  %35 = load i8*, i8** %a, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom69 = sext i32 %36 to i64
  %arrayidx70 = getelementptr inbounds i8, i8* %35, i64 %idxprom69
  %37 = load i8, i8* %arrayidx70, align 1
  %conv71 = sext i8 %37 to i32
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %conv71)
  br label %if.end73

if.end73:                                         ; preds = %if.else68, %if.end67
  br label %for.inc74

for.inc74:                                        ; preds = %if.end73, %if.then54
  %38 = load i32, i32* %i, align 4
  %inc75 = add nsw i32 %38, 1
  store i32 %inc75, i32* %i, align 4
  br label %for.cond36, !llvm.loop !6

for.end76:                                        ; preds = %for.cond36
  %call77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %for.inc78

for.inc78:                                        ; preds = %for.end76
  %39 = load i32, i32* %pair, align 4
  %inc79 = add nsw i32 %39, 1
  store i32 %inc79, i32* %pair, align 4
  br label %for.cond, !llvm.loop !7

for.end80:                                        ; preds = %for.cond
  %40 = load i32, i32* %retval, align 4
  ret i32 %40
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local double @atof(i8*) #2

; Function Attrs: nounwind
declare dso_local void @srand(i32) #1

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly willreturn }

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
