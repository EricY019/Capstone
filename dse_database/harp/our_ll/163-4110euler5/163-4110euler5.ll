; ModuleID = 'code/163-4110euler5.c'
source_filename = "code/163-4110euler5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [79 x i8] c"\0A\0AThe program finds the smallest number evenly divisible by the numbers 1-20\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\0A%lld is divisible by:\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"\0A1: %lld\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"\0A2: %lld\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\0A3: %lld\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"\0A4: %lld\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"\0A5: %lld\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"\0A6: %lld\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"\0A7: %lld\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"\0A8: %lld\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"\0A9: %lld\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"\0A10: %lld\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"\0A11: %lld\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"\0A12: %lld\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"\0A13: %lld\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"\0A14: %lld\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"\0A15: %lld\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"\0A16: %lld\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"\0A17: %lld\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"\0A18: %lld\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"\0A19: %lld\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"\0A20: %lld\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %number = alloca i64, align 8
  %success = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  store i64 0, i64* %number, align 8
  store i8 0, i8* %success, align 1
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  br label %while.cond

while.cond:                                       ; preds = %if.end77, %entry
  %0 = load i8, i8* %success, align 1
  %tobool = trunc i8 %0 to i1
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, i64* %number, align 8
  %inc = add nsw i64 %1, 1
  store i64 %inc, i64* %number, align 8
  %2 = load i64, i64* %number, align 8
  %rem = srem i64 %2, 1
  %tobool1 = icmp ne i64 %rem, 0
  br i1 %tobool1, label %if.end77, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load i64, i64* %number, align 8
  %rem2 = srem i64 %3, 2
  %tobool3 = icmp ne i64 %rem2, 0
  br i1 %tobool3, label %if.end76, label %if.then4

if.then4:                                         ; preds = %if.then
  %4 = load i64, i64* %number, align 8
  %rem5 = srem i64 %4, 3
  %tobool6 = icmp ne i64 %rem5, 0
  br i1 %tobool6, label %if.end75, label %if.then7

if.then7:                                         ; preds = %if.then4
  %5 = load i64, i64* %number, align 8
  %rem8 = srem i64 %5, 4
  %tobool9 = icmp ne i64 %rem8, 0
  br i1 %tobool9, label %if.end74, label %if.then10

if.then10:                                        ; preds = %if.then7
  %6 = load i64, i64* %number, align 8
  %rem11 = srem i64 %6, 5
  %tobool12 = icmp ne i64 %rem11, 0
  br i1 %tobool12, label %if.end73, label %if.then13

if.then13:                                        ; preds = %if.then10
  %7 = load i64, i64* %number, align 8
  %rem14 = srem i64 %7, 6
  %tobool15 = icmp ne i64 %rem14, 0
  br i1 %tobool15, label %if.end72, label %if.then16

if.then16:                                        ; preds = %if.then13
  %8 = load i64, i64* %number, align 8
  %rem17 = srem i64 %8, 7
  %tobool18 = icmp ne i64 %rem17, 0
  br i1 %tobool18, label %if.end71, label %if.then19

if.then19:                                        ; preds = %if.then16
  %9 = load i64, i64* %number, align 8
  %rem20 = srem i64 %9, 8
  %tobool21 = icmp ne i64 %rem20, 0
  br i1 %tobool21, label %if.end70, label %if.then22

if.then22:                                        ; preds = %if.then19
  %10 = load i64, i64* %number, align 8
  %rem23 = srem i64 %10, 9
  %tobool24 = icmp ne i64 %rem23, 0
  br i1 %tobool24, label %if.end69, label %if.then25

if.then25:                                        ; preds = %if.then22
  %11 = load i64, i64* %number, align 8
  %rem26 = srem i64 %11, 10
  %tobool27 = icmp ne i64 %rem26, 0
  br i1 %tobool27, label %if.end68, label %if.then28

if.then28:                                        ; preds = %if.then25
  %12 = load i64, i64* %number, align 8
  %rem29 = srem i64 %12, 11
  %tobool30 = icmp ne i64 %rem29, 0
  br i1 %tobool30, label %if.end67, label %if.then31

if.then31:                                        ; preds = %if.then28
  %13 = load i64, i64* %number, align 8
  %rem32 = srem i64 %13, 12
  %tobool33 = icmp ne i64 %rem32, 0
  br i1 %tobool33, label %if.end66, label %if.then34

if.then34:                                        ; preds = %if.then31
  %14 = load i64, i64* %number, align 8
  %rem35 = srem i64 %14, 13
  %tobool36 = icmp ne i64 %rem35, 0
  br i1 %tobool36, label %if.end65, label %if.then37

if.then37:                                        ; preds = %if.then34
  %15 = load i64, i64* %number, align 8
  %rem38 = srem i64 %15, 14
  %tobool39 = icmp ne i64 %rem38, 0
  br i1 %tobool39, label %if.end64, label %if.then40

if.then40:                                        ; preds = %if.then37
  %16 = load i64, i64* %number, align 8
  %rem41 = srem i64 %16, 15
  %tobool42 = icmp ne i64 %rem41, 0
  br i1 %tobool42, label %if.end63, label %if.then43

if.then43:                                        ; preds = %if.then40
  %17 = load i64, i64* %number, align 8
  %rem44 = srem i64 %17, 16
  %tobool45 = icmp ne i64 %rem44, 0
  br i1 %tobool45, label %if.end62, label %if.then46

if.then46:                                        ; preds = %if.then43
  %18 = load i64, i64* %number, align 8
  %rem47 = srem i64 %18, 17
  %tobool48 = icmp ne i64 %rem47, 0
  br i1 %tobool48, label %if.end61, label %if.then49

if.then49:                                        ; preds = %if.then46
  %19 = load i64, i64* %number, align 8
  %rem50 = srem i64 %19, 18
  %tobool51 = icmp ne i64 %rem50, 0
  br i1 %tobool51, label %if.end60, label %if.then52

if.then52:                                        ; preds = %if.then49
  %20 = load i64, i64* %number, align 8
  %rem53 = srem i64 %20, 19
  %tobool54 = icmp ne i64 %rem53, 0
  br i1 %tobool54, label %if.end59, label %if.then55

if.then55:                                        ; preds = %if.then52
  %21 = load i64, i64* %number, align 8
  %rem56 = srem i64 %21, 20
  %tobool57 = icmp ne i64 %rem56, 0
  br i1 %tobool57, label %if.end, label %if.then58

if.then58:                                        ; preds = %if.then55
  store i8 1, i8* %success, align 1
  br label %if.end

if.end:                                           ; preds = %if.then58, %if.then55
  br label %if.end59

if.end59:                                         ; preds = %if.end, %if.then52
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then49
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then46
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then43
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then40
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then37
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then34
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then31
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then28
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then25
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then22
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then19
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then16
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then13
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then10
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then7
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then4
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.then
  br label %if.end77

if.end77:                                         ; preds = %if.end76, %while.body
  br label %while.cond, !llvm.loop !4

while.end:                                        ; preds = %while.cond
  %22 = load i64, i64* %number, align 8
  %call78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %22)
  %23 = load i64, i64* %number, align 8
  %rem79 = srem i64 %23, 1
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i64 %rem79)
  %24 = load i64, i64* %number, align 8
  %rem81 = srem i64 %24, 2
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %rem81)
  %25 = load i64, i64* %number, align 8
  %rem83 = srem i64 %25, 3
  %call84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %rem83)
  %26 = load i64, i64* %number, align 8
  %rem85 = srem i64 %26, 4
  %call86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i64 %rem85)
  %27 = load i64, i64* %number, align 8
  %rem87 = srem i64 %27, 5
  %call88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 %rem87)
  %28 = load i64, i64* %number, align 8
  %rem89 = srem i64 %28, 6
  %call90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i64 %rem89)
  %29 = load i64, i64* %number, align 8
  %rem91 = srem i64 %29, 7
  %call92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i64 %rem91)
  %30 = load i64, i64* %number, align 8
  %rem93 = srem i64 %30, 8
  %call94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i64 %rem93)
  %31 = load i64, i64* %number, align 8
  %rem95 = srem i64 %31, 9
  %call96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i64 %rem95)
  %32 = load i64, i64* %number, align 8
  %rem97 = srem i64 %32, 10
  %call98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i64 %rem97)
  %33 = load i64, i64* %number, align 8
  %rem99 = srem i64 %33, 11
  %call100 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i64 %rem99)
  %34 = load i64, i64* %number, align 8
  %rem101 = srem i64 %34, 12
  %call102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64 %rem101)
  %35 = load i64, i64* %number, align 8
  %rem103 = srem i64 %35, 13
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i64 %rem103)
  %36 = load i64, i64* %number, align 8
  %rem105 = srem i64 %36, 14
  %call106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i64 %rem105)
  %37 = load i64, i64* %number, align 8
  %rem107 = srem i64 %37, 15
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i64 %rem107)
  %38 = load i64, i64* %number, align 8
  %rem109 = srem i64 %38, 16
  %call110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i64 %rem109)
  %39 = load i64, i64* %number, align 8
  %rem111 = srem i64 %39, 17
  %call112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0), i64 %rem111)
  %40 = load i64, i64* %number, align 8
  %rem113 = srem i64 %40, 18
  %call114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0), i64 %rem113)
  %41 = load i64, i64* %number, align 8
  %rem115 = srem i64 %41, 19
  %call116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0), i64 %rem115)
  %42 = load i64, i64* %number, align 8
  %rem117 = srem i64 %42, 20
  %call118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i64 0, i64 0), i64 %rem117)
  %call119 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"uwtable", i32 1}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"clang version 13.0.0"}
!4 = distinct !{!4, !5}
!5 = !{!"llvm.loop.mustprogress"}
