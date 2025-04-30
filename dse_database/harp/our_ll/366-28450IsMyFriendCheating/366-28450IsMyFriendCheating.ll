; ModuleID = 'code/366-28450IsMyFriendCheating.c'
source_filename = "code/366-28450IsMyFriendCheating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Pair = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"{%lld, %lld}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Error. Expected %s but got %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"strcmp(sact, sexpr) == 0\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"code/366-28450IsMyFriendCheating.c\00", align 1
@__PRETTY_FUNCTION__.dotest = private unnamed_addr constant [31 x i8] c"void dotest(long long, char *)\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"{}\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"{{15, 21}{21, 15}}\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"{{21, 31}{31, 21}}\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"{{55, 91}{91, 55}}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Pair** @removNb(i64 %n, i32* %length) #0 {
entry:
  %n.addr = alloca i64, align 8
  %length.addr = alloca i32*, align 8
  %result = alloca %struct.Pair**, align 8
  %sum = alloca i64, align 8
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  store i32* %length, i32** %length.addr, align 8
  %call = call noalias align 16 i8* @malloc(i64 800) #5
  %0 = bitcast i8* %call to %struct.Pair**
  store %struct.Pair** %0, %struct.Pair*** %result, align 8
  %1 = load i64, i64* %n.addr, align 8
  %2 = load i64, i64* %n.addr, align 8
  %add = add nsw i64 %2, 1
  %mul = mul nsw i64 %1, %add
  %div = sdiv i64 %mul, 2
  store i64 %div, i64* %sum, align 8
  store i64 1, i64* %a, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i64, i64* %a, align 8
  %4 = load i64, i64* %n.addr, align 8
  %cmp = icmp sle i64 %3, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i64, i64* %sum, align 8
  %6 = load i64, i64* %a, align 8
  %sub = sub nsw i64 %5, %6
  %7 = load i64, i64* %a, align 8
  %add1 = add nsw i64 %7, 1
  %rem = srem i64 %sub, %add1
  %cmp2 = icmp eq i64 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end18

if.then:                                          ; preds = %for.body
  %8 = load i64, i64* %sum, align 8
  %9 = load i64, i64* %a, align 8
  %sub3 = sub nsw i64 %8, %9
  %conv = sitofp i64 %sub3 to double
  %10 = load i64, i64* %a, align 8
  %conv4 = sitofp i64 %10 to double
  %add5 = fadd double %conv4, 1.000000e+00
  %div6 = fdiv double %conv, %add5
  %conv7 = fptosi double %div6 to i64
  store i64 %conv7, i64* %b, align 8
  %11 = load i64, i64* %b, align 8
  %12 = load i64, i64* %n.addr, align 8
  %cmp8 = icmp slt i64 %11, %12
  br i1 %cmp8, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then
  %13 = load i64, i64* %b, align 8
  %cmp10 = icmp sgt i64 %13, 0
  br i1 %cmp10, label %if.then12, label %if.end

if.then12:                                        ; preds = %land.lhs.true
  %call13 = call noalias align 16 i8* @malloc(i64 16) #5
  %14 = bitcast i8* %call13 to %struct.Pair*
  %15 = load %struct.Pair**, %struct.Pair*** %result, align 8
  %16 = load i32*, i32** %length.addr, align 8
  %17 = load i32, i32* %16, align 4
  %idxprom = sext i32 %17 to i64
  %arrayidx = getelementptr inbounds %struct.Pair*, %struct.Pair** %15, i64 %idxprom
  store %struct.Pair* %14, %struct.Pair** %arrayidx, align 8
  %18 = load i64, i64* %a, align 8
  %19 = load %struct.Pair**, %struct.Pair*** %result, align 8
  %20 = load i32*, i32** %length.addr, align 8
  %21 = load i32, i32* %20, align 4
  %idxprom14 = sext i32 %21 to i64
  %arrayidx15 = getelementptr inbounds %struct.Pair*, %struct.Pair** %19, i64 %idxprom14
  %22 = load %struct.Pair*, %struct.Pair** %arrayidx15, align 8
  %first = getelementptr inbounds %struct.Pair, %struct.Pair* %22, i32 0, i32 0
  store i64 %18, i64* %first, align 8
  %23 = load i64, i64* %b, align 8
  %24 = load %struct.Pair**, %struct.Pair*** %result, align 8
  %25 = load i32*, i32** %length.addr, align 8
  %26 = load i32, i32* %25, align 4
  %idxprom16 = sext i32 %26 to i64
  %arrayidx17 = getelementptr inbounds %struct.Pair*, %struct.Pair** %24, i64 %idxprom16
  %27 = load %struct.Pair*, %struct.Pair** %arrayidx17, align 8
  %snd = getelementptr inbounds %struct.Pair, %struct.Pair* %27, i32 0, i32 1
  store i64 %23, i64* %snd, align 8
  %28 = load i32*, i32** %length.addr, align 8
  %29 = load i32, i32* %28, align 4
  %inc = add nsw i32 %29, 1
  store i32 %inc, i32* %28, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true, %if.then
  br label %if.end18

if.end18:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end18
  %30 = load i64, i64* %a, align 8
  %inc19 = add nsw i64 %30, 1
  store i64 %inc19, i64* %a, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %31 = load %struct.Pair**, %struct.Pair*** %result, align 8
  ret %struct.Pair** %31
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @array2StringData(%struct.Pair** %arr, i32 %size) #0 {
entry:
  %arr.addr = alloca %struct.Pair**, align 8
  %size.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  %temp = alloca [50 x i8], align 16
  %i = alloca i32, align 4
  store %struct.Pair** %arr, %struct.Pair*** %arr.addr, align 8
  store i32 %size, i32* %size.addr, align 4
  %0 = load i32, i32* %size.addr, align 4
  %mul = mul nsw i32 %0, 7
  %conv = sext i32 %mul to i64
  %call = call noalias align 16 i8* @malloc(i64 %conv) #5
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)) #5
  %arraydecay = getelementptr inbounds [50 x i8], [50 x i8]* %temp, i64 0, i64 0
  %call2 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %size.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay4 = getelementptr inbounds [50 x i8], [50 x i8]* %temp, i64 0, i64 0
  %4 = load %struct.Pair**, %struct.Pair*** %arr.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds %struct.Pair*, %struct.Pair** %4, i64 %idxprom
  %6 = load %struct.Pair*, %struct.Pair** %arrayidx, align 8
  %first = getelementptr inbounds %struct.Pair, %struct.Pair* %6, i32 0, i32 0
  %7 = load i64, i64* %first, align 8
  %8 = load %struct.Pair**, %struct.Pair*** %arr.addr, align 8
  %9 = load i32, i32* %i, align 4
  %idxprom5 = sext i32 %9 to i64
  %arrayidx6 = getelementptr inbounds %struct.Pair*, %struct.Pair** %8, i64 %idxprom5
  %10 = load %struct.Pair*, %struct.Pair** %arrayidx6, align 8
  %snd = getelementptr inbounds %struct.Pair, %struct.Pair* %10, i32 0, i32 1
  %11 = load i64, i64* %snd, align 8
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %7, i64 %11) #5
  %12 = load i8*, i8** %result, align 8
  %arraydecay8 = getelementptr inbounds [50 x i8], [50 x i8]* %temp, i64 0, i64 0
  %call9 = call i8* @strcat(i8* %12, i8* %arraydecay8) #5
  %arraydecay10 = getelementptr inbounds [50 x i8], [50 x i8]* %temp, i64 0, i64 0
  %call11 = call i8* @strcpy(i8* %arraydecay10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0)) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4
  %inc = add nsw i32 %13, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  %14 = load i8*, i8** %result, align 8
  %call12 = call i8* @strcat(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #5
  %15 = load i8*, i8** %result, align 8
  ret i8* %15
}

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dotest(i64 %n, i8* %sexpr) #0 {
entry:
  %n.addr = alloca i64, align 8
  %sexpr.addr = alloca i8*, align 8
  %lg = alloca i32, align 4
  %act = alloca %struct.Pair**, align 8
  %sact = alloca i8*, align 8
  store i64 %n, i64* %n.addr, align 8
  store i8* %sexpr, i8** %sexpr.addr, align 8
  store i32 0, i32* %lg, align 4
  %0 = load i64, i64* %n.addr, align 8
  %call = call %struct.Pair** @removNb(i64 %0, i32* %lg)
  store %struct.Pair** %call, %struct.Pair*** %act, align 8
  %1 = load %struct.Pair**, %struct.Pair*** %act, align 8
  %2 = load i32, i32* %lg, align 4
  %call1 = call i8* @array2StringData(%struct.Pair** %1, i32 %2)
  store i8* %call1, i8** %sact, align 8
  %3 = load i8*, i8** %sact, align 8
  %4 = load i8*, i8** %sexpr.addr, align 8
  %call2 = call i32 @strcmp(i8* %3, i8* %4) #6
  %cmp = icmp ne i32 %call2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i8*, i8** %sexpr.addr, align 8
  %6 = load i8*, i8** %sact, align 8
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %5, i8* %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %sact, align 8
  %8 = load i8*, i8** %sexpr.addr, align 8
  %call4 = call i32 @strcmp(i8* %7, i8* %8) #6
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__PRETTY_FUNCTION__.dotest, i64 0, i64 0)) #7
  unreachable

9:                                                ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %9, %cond.true
  %10 = load i8*, i8** %sact, align 8
  %call6 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6
  %cmp7 = icmp ne i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %cond.end
  %11 = load i8*, i8** %sact, align 8
  call void @free(i8* %11) #5
  store i8* null, i8** %sact, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %cond.end
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind
declare dso_local void @free(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  call void @dotest(i64 26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  call void @dotest(i64 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  call void @dotest(i64 37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  call void @dotest(i64 101, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
