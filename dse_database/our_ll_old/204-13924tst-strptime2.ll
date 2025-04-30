; ModuleID = './code/204-13924tst-strptime2.c'
source_filename = "./code/204-13924tst-strptime2.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.anon = type { ptr, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@tests = internal constant [13 x %struct.anon] [%struct.anon { ptr @.str.4, i64 36000 }, %struct.anon { ptr @.str.5, i64 -36000 }, %struct.anon { ptr @.str.6, i64 36000 }, %struct.anon { ptr @.str.7, i64 -36000 }, %struct.anon { ptr @.str.8, i64 37800 }, %struct.anon { ptr @.str.9, i64 -37800 }, %struct.anon { ptr @.str.10, i64 1800 }, %struct.anon { ptr @.str.11, i64 -1800 }, %struct.anon { ptr @.str.12, i64 9223372036854775807 }, %struct.anon { ptr @.str.13, i64 9223372036854775807 }, %struct.anon { ptr @.str.14, i64 9223372036854775807 }, %struct.anon { ptr @.str.15, i64 9223372036854775807 }, %struct.anon { ptr @.str.16, i64 9223372036854775807 }], align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %z\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"round %d: strptime unexpectedly failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"round %d: tm_gmtoff is %ld\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"all OK\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"1113472456 +1000\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"1113472456 -1000\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"1113472456 +10\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"1113472456 -10\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"1113472456 +1030\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"1113472456 -1030\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"1113472456 +0030\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"1113472456 -0030\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"1113472456 -1330\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"1113472456 +1330\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"1113472456 -1060\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"1113472456 +1060\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"1113472456  1030\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %tm = alloca %struct.tm, align 8
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %result, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 13
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [13 x %struct.anon], ptr @tests, i64 0, i64 %idxprom
  %fmt = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0
  %2 = load ptr, ptr %fmt, align 8
  %call = call ptr @"\01_strptime"(ptr noundef %2, ptr noundef @.str, ptr noundef %tm)
  %cmp2 = icmp eq ptr %call, null
  br i1 %cmp2, label %if.then, label %if.end10

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [13 x %struct.anon], ptr @tests, i64 0, i64 %idxprom4
  %gmtoff = getelementptr inbounds %struct.anon, ptr %arrayidx5, i32 0, i32 1
  %4 = load i64, ptr %gmtoff, align 8
  %cmp6 = icmp ne i64 %4, 9223372036854775807
  br i1 %cmp6, label %if.then8, label %if.end

if.then8:                                         ; preds = %if.then
  %5 = load i32, ptr %i, align 4
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %5)
  store i32 1, ptr %result, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %tm_gmtoff = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 9
  %6 = load i64, ptr %tm_gmtoff, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [13 x %struct.anon], ptr @tests, i64 0, i64 %idxprom11
  %gmtoff13 = getelementptr inbounds %struct.anon, ptr %arrayidx12, i32 0, i32 1
  %8 = load i64, ptr %gmtoff13, align 8
  %cmp14 = icmp ne i64 %6, %8
  br i1 %cmp14, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end10
  %9 = load i32, ptr %i, align 4
  %tm_gmtoff17 = getelementptr inbounds %struct.tm, ptr %tm, i32 0, i32 9
  %10 = load i64, ptr %tm_gmtoff17, align 8
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %9, i64 noundef %10)
  store i32 1, ptr %result, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end10
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.end
  %11 = load i32, ptr %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr %result, align 4
  %cmp20 = icmp eq i32 %12, 0
  br i1 %cmp20, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.end
  %call23 = call i32 @puts(ptr noundef @.str.3)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.end
  ret i32 0
}

declare ptr @"\01_strptime"(ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @puts(ptr noundef) #1

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
