; ModuleID = './code/050-27876counting-sundays.c'
source_filename = "./code/050-27876counting-sundays.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"jan\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"feb\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mar\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"apr\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"may\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"jun\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"jul\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"aug\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"sep\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"oct\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"nov\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@months = global [12 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 8
@month_days = global [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"sun\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"mon\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"tue\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"wed\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"thu\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"fri\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"sat\00", align 1
@days = global [7 x ptr] [ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], align 8
@.str.19 = private unnamed_addr constant [15 x i8] c"%s, %s %d, %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"leap year: %s, %s %d, %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"total: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %month = alloca i32, align 4
  %date = alloca i32, align 4
  %year = alloca i32, align 4
  %day = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %month, align 4
  store i32 1, ptr %date, align 4
  store i32 1900, ptr %year, align 4
  store i32 1, ptr %day, align 4
  store i32 0, ptr %n, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end38, %entry
  %0 = load i32, ptr %year, align 4
  %cmp = icmp slt i32 %0, 2001
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %date, align 4
  %cmp1 = icmp eq i32 %1, 1
  br i1 %cmp1, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %2 = load i32, ptr %day, align 4
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %land.lhs.true3, label %if.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %year, align 4
  %cmp4 = icmp sgt i32 %3, 1900
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true3
  %4 = load i32, ptr %n, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %n, align 4
  %5 = load i32, ptr %day, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds [7 x ptr], ptr @days, i64 0, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8
  %7 = load i32, ptr %month, align 4
  %idxprom5 = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [12 x ptr], ptr @months, i64 0, i64 %idxprom5
  %8 = load ptr, ptr %arrayidx6, align 8
  %9 = load i32, ptr %date, align 4
  %10 = load i32, ptr %year, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.19, ptr noundef %6, ptr noundef %8, i32 noundef %9, i32 noundef %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true3, %land.lhs.true, %while.body
  %11 = load i32, ptr %day, align 4
  %inc7 = add nsw i32 %11, 1
  store i32 %inc7, ptr %day, align 4
  %12 = load i32, ptr %day, align 4
  %cmp8 = icmp sgt i32 %12, 6
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end
  store i32 0, ptr %day, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end
  %13 = load i32, ptr %date, align 4
  %inc11 = add nsw i32 %13, 1
  store i32 %inc11, ptr %date, align 4
  %14 = load i32, ptr %date, align 4
  %15 = load i32, ptr %month, align 4
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [12 x i32], ptr @month_days, i64 0, i64 %idxprom12
  %16 = load i32, ptr %arrayidx13, align 4
  %cmp14 = icmp sgt i32 %14, %16
  br i1 %cmp14, label %if.then15, label %if.end38

if.then15:                                        ; preds = %if.end10
  %17 = load i32, ptr %month, align 4
  %cmp16 = icmp eq i32 %17, 1
  br i1 %cmp16, label %land.lhs.true17, label %if.else

land.lhs.true17:                                  ; preds = %if.then15
  %18 = load i32, ptr %date, align 4
  %cmp18 = icmp eq i32 %18, 29
  br i1 %cmp18, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true17
  %19 = load i32, ptr %year, align 4
  %rem = srem i32 %19, 4
  %cmp20 = icmp eq i32 %rem, 0
  br i1 %cmp20, label %land.lhs.true21, label %if.else

land.lhs.true21:                                  ; preds = %land.lhs.true19
  %20 = load i32, ptr %year, align 4
  %rem22 = srem i32 %20, 100
  %cmp23 = icmp ne i32 %rem22, 0
  br i1 %cmp23, label %if.then26, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true21
  %21 = load i32, ptr %year, align 4
  %rem24 = srem i32 %21, 400
  %cmp25 = icmp eq i32 %rem24, 0
  br i1 %cmp25, label %if.then26, label %if.else

if.then26:                                        ; preds = %lor.lhs.false, %land.lhs.true21
  %22 = load i32, ptr %day, align 4
  %idxprom27 = sext i32 %22 to i64
  %arrayidx28 = getelementptr inbounds [7 x ptr], ptr @days, i64 0, i64 %idxprom27
  %23 = load ptr, ptr %arrayidx28, align 8
  %24 = load i32, ptr %month, align 4
  %idxprom29 = sext i32 %24 to i64
  %arrayidx30 = getelementptr inbounds [12 x ptr], ptr @months, i64 0, i64 %idxprom29
  %25 = load ptr, ptr %arrayidx30, align 8
  %26 = load i32, ptr %date, align 4
  %27 = load i32, ptr %year, align 4
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.20, ptr noundef %23, ptr noundef %25, i32 noundef %26, i32 noundef %27)
  br label %if.end37

if.else:                                          ; preds = %lor.lhs.false, %land.lhs.true19, %land.lhs.true17, %if.then15
  store i32 1, ptr %date, align 4
  %28 = load i32, ptr %month, align 4
  %inc32 = add nsw i32 %28, 1
  store i32 %inc32, ptr %month, align 4
  %29 = load i32, ptr %month, align 4
  %cmp33 = icmp sgt i32 %29, 11
  br i1 %cmp33, label %if.then34, label %if.end36

if.then34:                                        ; preds = %if.else
  store i32 0, ptr %month, align 4
  %30 = load i32, ptr %year, align 4
  %inc35 = add nsw i32 %30, 1
  store i32 %inc35, ptr %year, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then26
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end10
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %31 = load i32, ptr %n, align 4
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str.21, i32 noundef %31)
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
