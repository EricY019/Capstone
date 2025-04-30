; ModuleID = './code/163-4110euler5.c'
source_filename = "./code/163-4110euler5.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

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

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %number = alloca i64, align 8
  %success = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  store i64 0, ptr %number, align 8
  store i8 0, ptr %success, align 1
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %while.cond

while.cond:                                       ; preds = %if.end76, %entry
  %0 = load i8, ptr %success, align 1
  %loadedv = trunc i8 %0 to i1
  %lnot = xor i1 %loadedv, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %number, align 8
  %inc = add nsw i64 %1, 1
  store i64 %inc, ptr %number, align 8
  %2 = load i64, ptr %number, align 8
  %rem = srem i64 %2, 1
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.end76, label %if.then

if.then:                                          ; preds = %while.body
  %3 = load i64, ptr %number, align 8
  %rem1 = srem i64 %3, 2
  %tobool2 = icmp ne i64 %rem1, 0
  br i1 %tobool2, label %if.end75, label %if.then3

if.then3:                                         ; preds = %if.then
  %4 = load i64, ptr %number, align 8
  %rem4 = srem i64 %4, 3
  %tobool5 = icmp ne i64 %rem4, 0
  br i1 %tobool5, label %if.end74, label %if.then6

if.then6:                                         ; preds = %if.then3
  %5 = load i64, ptr %number, align 8
  %rem7 = srem i64 %5, 4
  %tobool8 = icmp ne i64 %rem7, 0
  br i1 %tobool8, label %if.end73, label %if.then9

if.then9:                                         ; preds = %if.then6
  %6 = load i64, ptr %number, align 8
  %rem10 = srem i64 %6, 5
  %tobool11 = icmp ne i64 %rem10, 0
  br i1 %tobool11, label %if.end72, label %if.then12

if.then12:                                        ; preds = %if.then9
  %7 = load i64, ptr %number, align 8
  %rem13 = srem i64 %7, 6
  %tobool14 = icmp ne i64 %rem13, 0
  br i1 %tobool14, label %if.end71, label %if.then15

if.then15:                                        ; preds = %if.then12
  %8 = load i64, ptr %number, align 8
  %rem16 = srem i64 %8, 7
  %tobool17 = icmp ne i64 %rem16, 0
  br i1 %tobool17, label %if.end70, label %if.then18

if.then18:                                        ; preds = %if.then15
  %9 = load i64, ptr %number, align 8
  %rem19 = srem i64 %9, 8
  %tobool20 = icmp ne i64 %rem19, 0
  br i1 %tobool20, label %if.end69, label %if.then21

if.then21:                                        ; preds = %if.then18
  %10 = load i64, ptr %number, align 8
  %rem22 = srem i64 %10, 9
  %tobool23 = icmp ne i64 %rem22, 0
  br i1 %tobool23, label %if.end68, label %if.then24

if.then24:                                        ; preds = %if.then21
  %11 = load i64, ptr %number, align 8
  %rem25 = srem i64 %11, 10
  %tobool26 = icmp ne i64 %rem25, 0
  br i1 %tobool26, label %if.end67, label %if.then27

if.then27:                                        ; preds = %if.then24
  %12 = load i64, ptr %number, align 8
  %rem28 = srem i64 %12, 11
  %tobool29 = icmp ne i64 %rem28, 0
  br i1 %tobool29, label %if.end66, label %if.then30

if.then30:                                        ; preds = %if.then27
  %13 = load i64, ptr %number, align 8
  %rem31 = srem i64 %13, 12
  %tobool32 = icmp ne i64 %rem31, 0
  br i1 %tobool32, label %if.end65, label %if.then33

if.then33:                                        ; preds = %if.then30
  %14 = load i64, ptr %number, align 8
  %rem34 = srem i64 %14, 13
  %tobool35 = icmp ne i64 %rem34, 0
  br i1 %tobool35, label %if.end64, label %if.then36

if.then36:                                        ; preds = %if.then33
  %15 = load i64, ptr %number, align 8
  %rem37 = srem i64 %15, 14
  %tobool38 = icmp ne i64 %rem37, 0
  br i1 %tobool38, label %if.end63, label %if.then39

if.then39:                                        ; preds = %if.then36
  %16 = load i64, ptr %number, align 8
  %rem40 = srem i64 %16, 15
  %tobool41 = icmp ne i64 %rem40, 0
  br i1 %tobool41, label %if.end62, label %if.then42

if.then42:                                        ; preds = %if.then39
  %17 = load i64, ptr %number, align 8
  %rem43 = srem i64 %17, 16
  %tobool44 = icmp ne i64 %rem43, 0
  br i1 %tobool44, label %if.end61, label %if.then45

if.then45:                                        ; preds = %if.then42
  %18 = load i64, ptr %number, align 8
  %rem46 = srem i64 %18, 17
  %tobool47 = icmp ne i64 %rem46, 0
  br i1 %tobool47, label %if.end60, label %if.then48

if.then48:                                        ; preds = %if.then45
  %19 = load i64, ptr %number, align 8
  %rem49 = srem i64 %19, 18
  %tobool50 = icmp ne i64 %rem49, 0
  br i1 %tobool50, label %if.end59, label %if.then51

if.then51:                                        ; preds = %if.then48
  %20 = load i64, ptr %number, align 8
  %rem52 = srem i64 %20, 19
  %tobool53 = icmp ne i64 %rem52, 0
  br i1 %tobool53, label %if.end58, label %if.then54

if.then54:                                        ; preds = %if.then51
  %21 = load i64, ptr %number, align 8
  %rem55 = srem i64 %21, 20
  %tobool56 = icmp ne i64 %rem55, 0
  br i1 %tobool56, label %if.end, label %if.then57

if.then57:                                        ; preds = %if.then54
  store i8 1, ptr %success, align 1
  br label %if.end

if.end:                                           ; preds = %if.then57, %if.then54
  br label %if.end58

if.end58:                                         ; preds = %if.end, %if.then51
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.then48
  br label %if.end60

if.end60:                                         ; preds = %if.end59, %if.then45
  br label %if.end61

if.end61:                                         ; preds = %if.end60, %if.then42
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %if.then39
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then36
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %if.then33
  br label %if.end65

if.end65:                                         ; preds = %if.end64, %if.then30
  br label %if.end66

if.end66:                                         ; preds = %if.end65, %if.then27
  br label %if.end67

if.end67:                                         ; preds = %if.end66, %if.then24
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then21
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %if.then18
  br label %if.end70

if.end70:                                         ; preds = %if.end69, %if.then15
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then12
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then9
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then6
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then3
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %while.body
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %22 = load i64, ptr %number, align 8
  %call77 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %22)
  %23 = load i64, ptr %number, align 8
  %rem78 = srem i64 %23, 1
  %call79 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %rem78)
  %24 = load i64, ptr %number, align 8
  %rem80 = srem i64 %24, 2
  %call81 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %rem80)
  %25 = load i64, ptr %number, align 8
  %rem82 = srem i64 %25, 3
  %call83 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i64 noundef %rem82)
  %26 = load i64, ptr %number, align 8
  %rem84 = srem i64 %26, 4
  %call85 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i64 noundef %rem84)
  %27 = load i64, ptr %number, align 8
  %rem86 = srem i64 %27, 5
  %call87 = call i32 (ptr, ...) @printf(ptr noundef @.str.6, i64 noundef %rem86)
  %28 = load i64, ptr %number, align 8
  %rem88 = srem i64 %28, 6
  %call89 = call i32 (ptr, ...) @printf(ptr noundef @.str.7, i64 noundef %rem88)
  %29 = load i64, ptr %number, align 8
  %rem90 = srem i64 %29, 7
  %call91 = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i64 noundef %rem90)
  %30 = load i64, ptr %number, align 8
  %rem92 = srem i64 %30, 8
  %call93 = call i32 (ptr, ...) @printf(ptr noundef @.str.9, i64 noundef %rem92)
  %31 = load i64, ptr %number, align 8
  %rem94 = srem i64 %31, 9
  %call95 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, i64 noundef %rem94)
  %32 = load i64, ptr %number, align 8
  %rem96 = srem i64 %32, 10
  %call97 = call i32 (ptr, ...) @printf(ptr noundef @.str.11, i64 noundef %rem96)
  %33 = load i64, ptr %number, align 8
  %rem98 = srem i64 %33, 11
  %call99 = call i32 (ptr, ...) @printf(ptr noundef @.str.12, i64 noundef %rem98)
  %34 = load i64, ptr %number, align 8
  %rem100 = srem i64 %34, 12
  %call101 = call i32 (ptr, ...) @printf(ptr noundef @.str.13, i64 noundef %rem100)
  %35 = load i64, ptr %number, align 8
  %rem102 = srem i64 %35, 13
  %call103 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, i64 noundef %rem102)
  %36 = load i64, ptr %number, align 8
  %rem104 = srem i64 %36, 14
  %call105 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, i64 noundef %rem104)
  %37 = load i64, ptr %number, align 8
  %rem106 = srem i64 %37, 15
  %call107 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, i64 noundef %rem106)
  %38 = load i64, ptr %number, align 8
  %rem108 = srem i64 %38, 16
  %call109 = call i32 (ptr, ...) @printf(ptr noundef @.str.17, i64 noundef %rem108)
  %39 = load i64, ptr %number, align 8
  %rem110 = srem i64 %39, 17
  %call111 = call i32 (ptr, ...) @printf(ptr noundef @.str.18, i64 noundef %rem110)
  %40 = load i64, ptr %number, align 8
  %rem112 = srem i64 %40, 18
  %call113 = call i32 (ptr, ...) @printf(ptr noundef @.str.19, i64 noundef %rem112)
  %41 = load i64, ptr %number, align 8
  %rem114 = srem i64 %41, 19
  %call115 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, i64 noundef %rem114)
  %42 = load i64, ptr %number, align 8
  %rem116 = srem i64 %42, 20
  %call117 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, i64 noundef %rem116)
  %call118 = call i32 (ptr, ...) @printf(ptr noundef @.str.22)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
