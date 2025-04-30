; ModuleID = 'code/248-32978SrotTheInnerCtonnetInDsinnieedcgOredr.c'
source_filename = "code/248-32978SrotTheInnerCtonnetInDsinnieedcgOredr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"\0AYour result:     %s\0AExpected result: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"actual[i] == expected[i]\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"code/248-32978SrotTheInnerCtonnetInDsinnieedcgOredr.c\00", align 1
@__PRETTY_FUNCTION__.assertString = private unnamed_addr constant [39 x i8] c"void assertString(char *, char *, int)\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"sort the inner content in descending order\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"srot the inner ctonnet in dsnnieedcg oredr\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"wait for me\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"wiat for me\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"this kata is easy\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"tihs ktaa is esay\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmp_char(i8* %a, i8* %b) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca i8*, align 8
  %b.addr = alloca i8*, align 8
  store i8* %a, i8** %a.addr, align 8
  store i8* %b, i8** %b.addr, align 8
  %0 = load i8*, i8** %a.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %2 = load i8*, i8** %b.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv1 = sext i8 %3 to i32
  %cmp = icmp sgt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i8*, i8** %a.addr, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = sext i8 %5 to i32
  %6 = load i8*, i8** %b.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv4 = sext i8 %7 to i32
  %cmp5 = icmp slt i32 %conv3, %conv4
  br i1 %cmp5, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.else
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end8, %if.then7, %if.then
  %8 = load i32, i32* %retval, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sortTheInnerContent(i8* %words, i32 %length) #0 {
entry:
  %words.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %result = alloca i8*, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %word = alloca i8*, align 8
  store i8* %words, i8** %words.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i32, i32* %length.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias align 16 i8* @malloc(i64 %conv) #6
  store i8* %call, i8** %result, align 8
  %1 = load i8*, i8** %result, align 8
  %call1 = call i8* @strcpy(i8* %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)) #6
  %2 = load i32, i32* %length.addr, align 4
  %3 = zext i32 %2 to i64
  %4 = call i8* @llvm.stacksave()
  store i8* %4, i8** %saved_stack, align 8
  %vla = alloca i8, i64 %3, align 16
  store i64 %3, i64* %__vla_expr0, align 8
  %5 = load i8*, i8** %words.addr, align 8
  %call2 = call i8* @strcpy(i8* %vla, i8* %5) #6
  %6 = load i32, i32* %length.addr, align 4
  %7 = zext i32 %6 to i64
  %vla3 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %__vla_expr1, align 8
  %call4 = call i8* @strcpy(i8* %vla3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %call5 = call i8* @strtok(i8* %vla, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  store i8* %call5, i8** %word, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then, %entry
  %8 = load i8*, i8** %word, align 8
  %cmp = icmp ne i8* %8, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %9 = load i8*, i8** %word, align 8
  %call7 = call i64 @strlen(i8* %9) #7
  %cmp8 = icmp ule i64 %call7, 3
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %10 = load i8*, i8** %result, align 8
  %11 = load i8*, i8** %word, align 8
  %call10 = call i8* @strcat(i8* %10, i8* %11) #6
  %12 = load i8*, i8** %result, align 8
  %call11 = call i8* @strcat(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %call12 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  store i8* %call12, i8** %word, align 8
  br label %while.cond, !llvm.loop !4

if.end:                                           ; preds = %while.body
  %13 = load i8*, i8** %result, align 8
  %14 = load i8*, i8** %word, align 8
  %arrayidx = getelementptr inbounds i8, i8* %14, i64 0
  %call13 = call i8* @strncat(i8* %13, i8* %arrayidx, i64 1) #6
  %15 = load i8*, i8** %word, align 8
  %add.ptr = getelementptr inbounds i8, i8* %15, i64 1
  %call14 = call i8* @strcpy(i8* %vla3, i8* %add.ptr) #6
  %call15 = call i64 @strlen(i8* %vla3) #7
  %sub = sub i64 %call15, 1
  %arrayidx16 = getelementptr inbounds i8, i8* %vla3, i64 %sub
  store i8 0, i8* %arrayidx16, align 1
  %call17 = call i64 @strlen(i8* %vla3) #7
  call void @qsort(i8* %vla3, i64 %call17, i64 1, i32 (i8*, i8*)* @cmp_char)
  %16 = load i8*, i8** %result, align 8
  %call18 = call i8* @strcat(i8* %16, i8* %vla3) #6
  %17 = load i8*, i8** %result, align 8
  %18 = load i8*, i8** %word, align 8
  %19 = load i8*, i8** %word, align 8
  %call19 = call i64 @strlen(i8* %19) #7
  %sub20 = sub i64 %call19, 1
  %arrayidx21 = getelementptr inbounds i8, i8* %18, i64 %sub20
  %call22 = call i8* @strncat(i8* %17, i8* %arrayidx21, i64 1) #6
  %20 = load i8*, i8** %result, align 8
  %call23 = call i8* @strcat(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  %call24 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6
  store i8* %call24, i8** %word, align 8
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %21 = load i8*, i8** %result, align 8
  %22 = load i8*, i8** %saved_stack, align 8
  call void @llvm.stackrestore(i8* %22)
  ret i8* %21
}

; Function Attrs: nounwind
declare dso_local noalias align 16 i8* @malloc(i64) #1

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #1

; Function Attrs: nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare dso_local i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare dso_local i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local i8* @strncat(i8*, i8*, i64) #1

declare dso_local void @qsort(i8*, i64, i64, i32 (i8*, i8*)*) #4

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assertString(i8* %actual, i8* %expected, i32 %length) #0 {
entry:
  %actual.addr = alloca i8*, align 8
  %expected.addr = alloca i8*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store i8* %actual, i8** %actual.addr, align 8
  store i8* %expected, i8** %expected.addr, align 8
  store i32 %length, i32* %length.addr, align 4
  %0 = load i8*, i8** %actual.addr, align 8
  %1 = load i8*, i8** %expected.addr, align 8
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %0, i8* %1)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load i32, i32* %length.addr, align 4
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %actual.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %idxprom
  %6 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %6 to i32
  %7 = load i8*, i8** %expected.addr, align 8
  %8 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %8 to i64
  %arrayidx2 = getelementptr inbounds i8, i8* %7, i64 %idxprom1
  %9 = load i8, i8* %arrayidx2, align 1
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp ne i32 %conv, %conv3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i8*, i8** %actual.addr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %arrayidx7 = getelementptr inbounds i8, i8* %10, i64 %idxprom6
  %12 = load i8, i8* %arrayidx7, align 1
  %conv8 = sext i8 %12 to i32
  %13 = load i8*, i8** %expected.addr, align 8
  %14 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %14 to i64
  %arrayidx10 = getelementptr inbounds i8, i8* %13, i64 %idxprom9
  %15 = load i8, i8* %arrayidx10, align 1
  %conv11 = sext i8 %15 to i32
  %cmp12 = icmp eq i32 %conv8, %conv11
  br i1 %cmp12, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  call void @__assert_fail(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 55, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__PRETTY_FUNCTION__.assertString, i64 0, i64 0)) #8
  unreachable

16:                                               ; No predecessors!
  br label %cond.end

cond.end:                                         ; preds = %16, %cond.true
  br label %if.end

if.end:                                           ; preds = %cond.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, i32* %i, align 4
  %inc = add nsw i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  ret void
}

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %words1 = alloca i8*, align 8
  %expected1 = alloca i8*, align 8
  %words2 = alloca i8*, align 8
  %expected2 = alloca i8*, align 8
  %words3 = alloca i8*, align 8
  %expected3 = alloca i8*, align 8
  store i32 0, i32* %retval, align 4
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8** %words1, align 8
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8** %expected1, align 8
  %0 = load i8*, i8** %words1, align 8
  %1 = load i8*, i8** %words1, align 8
  %call = call i64 @strlen(i8* %1) #7
  %conv = trunc i64 %call to i32
  %call1 = call i8* @sortTheInnerContent(i8* %0, i32 %conv)
  %2 = load i8*, i8** %expected1, align 8
  %3 = load i8*, i8** %words1, align 8
  %call2 = call i64 @strlen(i8* %3) #7
  %conv3 = trunc i64 %call2 to i32
  call void @assertString(i8* %call1, i8* %2, i32 %conv3)
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %words2, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %expected2, align 8
  %4 = load i8*, i8** %words2, align 8
  %5 = load i8*, i8** %words2, align 8
  %call4 = call i64 @strlen(i8* %5) #7
  %conv5 = trunc i64 %call4 to i32
  %call6 = call i8* @sortTheInnerContent(i8* %4, i32 %conv5)
  %6 = load i8*, i8** %expected2, align 8
  %7 = load i8*, i8** %words2, align 8
  %call7 = call i64 @strlen(i8* %7) #7
  %conv8 = trunc i64 %call7 to i32
  call void @assertString(i8* %call6, i8* %6, i32 %conv8)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8** %words3, align 8
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i8** %expected3, align 8
  %8 = load i8*, i8** %words3, align 8
  %9 = load i8*, i8** %words3, align 8
  %call9 = call i64 @strlen(i8* %9) #7
  %conv10 = trunc i64 %call9 to i32
  %call11 = call i8* @sortTheInnerContent(i8* %8, i32 %conv10)
  %10 = load i8*, i8** %expected3, align 8
  %11 = load i8*, i8** %words3, align 8
  %call12 = call i64 @strlen(i8* %11) #7
  %conv13 = trunc i64 %call12 to i32
  call void @assertString(i8* %call11, i8* %10, i32 %conv13)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind willreturn }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
