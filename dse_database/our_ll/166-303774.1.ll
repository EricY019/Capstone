; ModuleID = 'code/166-303774.1.c'
source_filename = "code/166-303774.1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Largest is %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reverse_string(i8* %str) #0 {
entry:
  %str.addr = alloca i8*, align 8
  %temp = alloca i8, align 1
  %len = alloca i64, align 8
  %i = alloca i64, align 8
  %k = alloca i64, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %0) #4
  %sub = sub i64 %call, 1
  store i64 %sub, i64* %len, align 8
  %1 = load i64, i64* %len, align 8
  store i64 %1, i64* %k, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i64, i64* %i, align 8
  %3 = load i64, i64* %len, align 8
  %add = add i64 %3, 1
  %div = udiv i64 %add, 2
  %cmp = icmp ult i64 %2, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %str.addr, align 8
  %5 = load i64, i64* %k, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  %6 = load i8, i8* %arrayidx, align 1
  store i8 %6, i8* %temp, align 1
  %7 = load i8*, i8** %str.addr, align 8
  %8 = load i64, i64* %i, align 8
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 %8
  %9 = load i8, i8* %arrayidx1, align 1
  %10 = load i8*, i8** %str.addr, align 8
  %11 = load i64, i64* %k, align 8
  %arrayidx2 = getelementptr inbounds i8, i8* %10, i64 %11
  store i8 %9, i8* %arrayidx2, align 1
  %12 = load i8, i8* %temp, align 1
  %13 = load i8*, i8** %str.addr, align 8
  %14 = load i64, i64* %i, align 8
  %arrayidx3 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8 %12, i8* %arrayidx3, align 1
  %15 = load i64, i64* %k, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %k, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %16 = load i64, i64* %i, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isPalindrome(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %str = alloca [10 x i8], align 1
  %rev = alloca [10 x i8], align 1
  store i32 %n, i32* %n.addr, align 4
  %arraydecay = getelementptr inbounds [10 x i8], [10 x i8]* %str, i64 0, i64 0
  %0 = load i32, i32* %n.addr, align 4
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %0) #5
  %arraydecay1 = getelementptr inbounds [10 x i8], [10 x i8]* %rev, i64 0, i64 0
  %arraydecay2 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i64 0, i64 0
  %call3 = call i8* @strcpy(i8* %arraydecay1, i8* %arraydecay2) #5
  %arraydecay4 = getelementptr inbounds [10 x i8], [10 x i8]* %rev, i64 0, i64 0
  call void @reverse_string(i8* %arraydecay4)
  %arraydecay5 = getelementptr inbounds [10 x i8], [10 x i8]* %str, i64 0, i64 0
  %arraydecay6 = getelementptr inbounds [10 x i8], [10 x i8]* %rev, i64 0, i64 0
  %call7 = call i32 @strcmp(i8* %arraydecay5, i8* %arraydecay6) #4
  %cmp = icmp eq i32 %call7, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: nounwind
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare dso_local i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readonly willreturn
declare dso_local i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %product = alloca i32, align 4
  %large = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  store i32 100, i32* %a, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, i32* %a, align 4
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 100, i32* %b, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, i32* %b, align 4
  %cmp2 = icmp slt i32 %1, 1000
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, i32* %a, align 4
  %3 = load i32, i32* %b, align 4
  %mul = mul nsw i32 %2, %3
  store i32 %mul, i32* %product, align 4
  %4 = load i32, i32* %product, align 4
  %call = call i32 @isPalindrome(i32 %4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end6

if.then:                                          ; preds = %for.body3
  %5 = load i32, i32* %product, align 4
  %6 = load i32, i32* %large, align 4
  %cmp4 = icmp sgt i32 %5, %6
  br i1 %cmp4, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  %7 = load i32, i32* %product, align 4
  store i32 %7, i32* %large, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end6

if.end6:                                          ; preds = %if.end, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %8 = load i32, i32* %b, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, i32* %b, align 4
  br label %for.cond1, !llvm.loop !6

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %9 = load i32, i32* %a, align 4
  %inc8 = add nsw i32 %9, 1
  store i32 %inc8, i32* %a, align 4
  br label %for.cond, !llvm.loop !7

for.end9:                                         ; preds = %for.cond
  %10 = load i32, i32* %large, align 4
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %11 = load i32, i32* %retval, align 4
  ret i32 %11
}

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn }
attributes #5 = { nounwind }

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
