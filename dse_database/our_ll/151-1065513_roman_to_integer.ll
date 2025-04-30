; ModuleID = 'code/151-1065513_roman_to_integer.c'
source_filename = "code/151-1065513_roman_to_integer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"result for %s is %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"MCMLIV\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"MCMXC\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"MMXIV\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"MMXIV \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @valueOfSymbol(i8 signext %c) #0 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca i8, align 1
  store i8 %c, i8* %c.addr, align 1
  %0 = load i8, i8* %c.addr, align 1
  %conv = sext i8 %0 to i32
  switch i32 %conv, label %sw.default [
    i32 73, label %sw.bb
    i32 86, label %sw.bb1
    i32 88, label %sw.bb2
    i32 76, label %sw.bb3
    i32 67, label %sw.bb4
    i32 68, label %sw.bb5
    i32 77, label %sw.bb6
  ]

sw.bb:                                            ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  store i32 5, i32* %retval, align 4
  br label %return

sw.bb2:                                           ; preds = %entry
  store i32 10, i32* %retval, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  store i32 50, i32* %retval, align 4
  br label %return

sw.bb4:                                           ; preds = %entry
  store i32 100, i32* %retval, align 4
  br label %return

sw.bb5:                                           ; preds = %entry
  store i32 500, i32* %retval, align 4
  br label %return

sw.bb6:                                           ; preds = %entry
  store i32 1000, i32* %retval, align 4
  br label %return

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, i32* %retval, align 4
  ret i32 %1
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @romanToInt(i8* %s) #0 {
entry:
  %s.addr = alloca i8*, align 8
  %c = alloca i8*, align 8
  %current_value = alloca i32, align 4
  %big_value = alloca i32, align 4
  %result = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  store i32 0, i32* %current_value, align 4
  store i32 0, i32* %big_value, align 4
  store i32 0, i32* %result, align 4
  %0 = load i8*, i8** %s.addr, align 8
  %1 = load i8*, i8** %s.addr, align 8
  %call = call i64 @strlen(i8* %1) #3
  %add.ptr = getelementptr inbounds i8, i8* %0, i64 %call
  %add.ptr1 = getelementptr inbounds i8, i8* %add.ptr, i64 -1
  store i8* %add.ptr1, i8** %c, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i8*, i8** %c, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %2, i64 1
  %3 = load i8*, i8** %s.addr, align 8
  %cmp = icmp ne i8* %add.ptr2, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i8*, i8** %c, align 8
  %5 = load i8, i8* %4, align 1
  %call3 = call i32 @valueOfSymbol(i8 signext %5)
  store i32 %call3, i32* %current_value, align 4
  %6 = load i32, i32* %current_value, align 4
  %7 = load i32, i32* %big_value, align 4
  %cmp4 = icmp sge i32 %6, %7
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %current_value, align 4
  %9 = load i32, i32* %result, align 4
  %add = add nsw i32 %9, %8
  store i32 %add, i32* %result, align 4
  %10 = load i32, i32* %current_value, align 4
  store i32 %10, i32* %big_value, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %current_value, align 4
  %12 = load i32, i32* %result, align 4
  %sub = sub nsw i32 %12, %11
  store i32 %sub, i32* %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %13 = load i8*, i8** %c, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %13, i32 -1
  store i8* %incdec.ptr, i8** %c, align 8
  br label %for.cond, !llvm.loop !4

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %result, align 4
  ret i32 %14
}

; Function Attrs: nounwind readonly willreturn
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @romanToInt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %call)
  %call2 = call i32 @romanToInt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %call2)
  %call4 = call i32 @romanToInt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %call4)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #2

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
