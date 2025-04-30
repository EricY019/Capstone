; ModuleID = './code/371-31358masked.c'
source_filename = "./code/371-31358masked.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"input.txt\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@fin = global ptr null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"output.txt\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@fout = global ptr null, align 8

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %str = alloca [1000000 x i8], align 1
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %call = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call, ptr @fin, align 8
  %call1 = call ptr @"\01_fopen"(ptr noundef @.str.2, ptr noundef @.str.3)
  store ptr %call1, ptr @fout, align 8
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr @fin, align 8
  %call2 = call i32 @fgetc(ptr noundef %0)
  store i32 %call2, ptr %c, align 4
  %cmp = icmp ne i32 %call2, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %c, align 4
  %conv = trunc i32 %1 to i8
  %2 = load i32, ptr %i, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000000 x i8], ptr %str, i64 0, i64 %idxprom
  store i8 %conv, ptr %arrayidx, align 1
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc40, %while.end
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %i, align 4
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body, label %for.end42

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [1000000 x i8], ptr %str, i64 0, i64 %idxprom5
  %7 = load i8, ptr %arrayidx6, align 1
  %conv7 = sext i8 %7 to i32
  %cmp8 = icmp eq i32 %conv7, 77
  br i1 %cmp8, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %8 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [1000000 x i8], ptr %str, i64 0, i64 %idxprom10
  %9 = load i8, ptr %arrayidx11, align 1
  %conv12 = sext i8 %9 to i32
  %cmp13 = icmp eq i32 %conv12, 109
  br i1 %cmp13, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 0, ptr %n, align 4
  store i32 1, ptr %k, align 4
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %if.then
  %10 = load i32, ptr %k, align 4
  %cmp16 = icmp sle i32 %10, 5
  br i1 %cmp16, label %for.body18, label %for.end

for.body18:                                       ; preds = %for.cond15
  %11 = load i32, ptr %j, align 4
  %12 = load i32, ptr %k, align 4
  %add = add nsw i32 %11, %12
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds [1000000 x i8], ptr %str, i64 0, i64 %idxprom19
  %13 = load i8, ptr %arrayidx20, align 1
  %conv21 = sext i8 %13 to i32
  %cmp22 = icmp slt i32 %conv21, 91
  br i1 %cmp22, label %if.then24, label %if.end

if.then24:                                        ; preds = %for.body18
  %14 = load i32, ptr %k, align 4
  %sub = sub nsw i32 5, %14
  %shl = shl i32 1, %sub
  %15 = load i32, ptr %n, align 4
  %add25 = add nsw i32 %15, %shl
  store i32 %add25, ptr %n, align 4
  br label %if.end

if.end:                                           ; preds = %if.then24, %for.body18
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %16 = load i32, ptr %k, align 4
  %inc26 = add nsw i32 %16, 1
  store i32 %inc26, ptr %k, align 4
  br label %for.cond15, !llvm.loop !7

for.end:                                          ; preds = %for.cond15
  %17 = load i32, ptr %n, align 4
  %18 = load i32, ptr %j, align 4
  %idxprom27 = sext i32 %18 to i64
  %arrayidx28 = getelementptr inbounds [1000000 x i8], ptr %str, i64 0, i64 %idxprom27
  %19 = load i8, ptr %arrayidx28, align 1
  %conv29 = sext i8 %19 to i32
  %cmp30 = icmp eq i32 %conv29, 77
  %20 = zext i1 %cmp30 to i64
  %cond = select i1 %cmp30, i32 64, i32 96
  %add32 = add nsw i32 %17, %cond
  %21 = load ptr, ptr @fout, align 8
  %call33 = call i32 @fputc(i32 noundef %add32, ptr noundef %21)
  %22 = load i32, ptr %j, align 4
  %add34 = add nsw i32 %22, 5
  store i32 %add34, ptr %j, align 4
  br label %if.end39

if.else:                                          ; preds = %lor.lhs.false
  %23 = load i32, ptr %j, align 4
  %idxprom35 = sext i32 %23 to i64
  %arrayidx36 = getelementptr inbounds [1000000 x i8], ptr %str, i64 0, i64 %idxprom35
  %24 = load i8, ptr %arrayidx36, align 1
  %conv37 = sext i8 %24 to i32
  %25 = load ptr, ptr @fout, align 8
  %call38 = call i32 @fputc(i32 noundef %conv37, ptr noundef %25)
  br label %if.end39

if.end39:                                         ; preds = %if.else, %for.end
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %26 = load i32, ptr %j, align 4
  %inc41 = add nsw i32 %26, 1
  store i32 %inc41, ptr %j, align 4
  br label %for.cond, !llvm.loop !8

for.end42:                                        ; preds = %for.cond
  ret i32 0
}

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @fgetc(ptr noundef) #1

declare i32 @fputc(i32 noundef, ptr noundef) #1

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
