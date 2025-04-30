; ModuleID = './code/047-849main.c'
source_filename = "./code/047-849main.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [15 x i8] c"Init tableau.\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Lecture argument si present.\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0D%d%%\00", align 1
@__stdoutp = external global ptr, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"Ecart %d => %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %rnd = alloca i32, align 4
  %max = alloca i32, align 4
  %vals = alloca [10 x i32], align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %vals, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 1000000, ptr %max, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %3 = load i32, ptr %argc.addr, align 4
  %cmp2 = icmp eq i32 %3, 2
  br i1 %cmp2, label %if.then, label %if.end8

if.then:                                          ; preds = %for.end
  %4 = load ptr, ptr %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds ptr, ptr %4, i64 1
  %5 = load ptr, ptr %arrayidx3, align 8
  %call4 = call i32 @atoi(ptr noundef %5)
  store i32 %call4, ptr %max, align 4
  %6 = load i32, ptr %max, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %6)
  %7 = load i32, ptr %max, align 4
  %cmp6 = icmp sle i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  store i32 1000000, ptr %max, align 4
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end8

if.end8:                                          ; preds = %if.end, %for.end
  %call9 = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call9 to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %i, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc20, %if.end8
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %max, align 4
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body13, label %for.end22

for.body13:                                       ; preds = %for.cond10
  %call14 = call i32 @rand()
  %rem = srem i32 %call14, 10
  store i32 %rem, ptr %rnd, align 4
  %10 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %10, 100
  %11 = load i32, ptr %max, align 4
  %div = sdiv i32 %mul, %11
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %div)
  %12 = load ptr, ptr @__stdoutp, align 8
  %call16 = call i32 @fflush(ptr noundef %12)
  %13 = load i32, ptr %rnd, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [10 x i32], ptr %vals, i64 0, i64 %idxprom17
  %14 = load i32, ptr %arrayidx18, align 4
  %inc19 = add nsw i32 %14, 1
  store i32 %inc19, ptr %arrayidx18, align 4
  br label %for.inc20

for.inc20:                                        ; preds = %for.body13
  %15 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %15, 1
  store i32 %inc21, ptr %i, align 4
  br label %for.cond10, !llvm.loop !7

for.end22:                                        ; preds = %for.cond10
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  store i32 0, ptr %i, align 4
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc32, %for.end22
  %16 = load i32, ptr %i, align 4
  %cmp25 = icmp slt i32 %16, 10
  br i1 %cmp25, label %for.body27, label %for.end34

for.body27:                                       ; preds = %for.cond24
  %17 = load i32, ptr %i, align 4
  %18 = load i32, ptr %i, align 4
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [10 x i32], ptr %vals, i64 0, i64 %idxprom28
  %19 = load i32, ptr %arrayidx29, align 4
  %20 = load i32, ptr %max, align 4
  %div30 = sdiv i32 %20, 10
  %sub = sub nsw i32 %19, %div30
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, i32 noundef %17, i32 noundef %sub)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body27
  %21 = load i32, ptr %i, align 4
  %inc33 = add nsw i32 %21, 1
  store i32 %inc33, ptr %i, align 4
  br label %for.cond24, !llvm.loop !8

for.end34:                                        ; preds = %for.cond24
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @atoi(ptr noundef) #1

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

declare i32 @fflush(ptr noundef) #1

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
