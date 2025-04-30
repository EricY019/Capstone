; ModuleID = './code/124-215472217745.c'
source_filename = "./code/124-215472217745.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\0A%d \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %currentNumber = alloca i32, align 4
  %digitsOfNumber = alloca [4 x i8], align 1
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %count, align 4
  store i32 100, ptr %currentNumber, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %currentNumber, align 4
  %cmp = icmp sle i32 %0, 999
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [4 x i8], ptr %digitsOfNumber, i64 0, i64 0
  %1 = load i32, ptr %currentNumber, align 4
  %call = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay, i32 noundef 0, i64 noundef 4, ptr noundef @.str, i32 noundef %1)
  %arrayidx = getelementptr inbounds [4 x i8], ptr %digitsOfNumber, i64 0, i64 0
  %2 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %2 to i32
  %arrayidx1 = getelementptr inbounds [4 x i8], ptr %digitsOfNumber, i64 0, i64 1
  %3 = load i8, ptr %arrayidx1, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp eq i32 %conv, %conv2
  br i1 %cmp3, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [4 x i8], ptr %digitsOfNumber, i64 0, i64 1
  %4 = load i8, ptr %arrayidx5, align 1
  %conv6 = sext i8 %4 to i32
  %arrayidx7 = getelementptr inbounds [4 x i8], ptr %digitsOfNumber, i64 0, i64 2
  %5 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %5 to i32
  %cmp9 = icmp eq i32 %conv6, %conv8
  br i1 %cmp9, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %arrayidx12 = getelementptr inbounds [4 x i8], ptr %digitsOfNumber, i64 0, i64 0
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = sext i8 %6 to i32
  %arrayidx14 = getelementptr inbounds [4 x i8], ptr %digitsOfNumber, i64 0, i64 2
  %7 = load i8, ptr %arrayidx14, align 1
  %conv15 = sext i8 %7 to i32
  %cmp16 = icmp eq i32 %conv13, %conv15
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false, %for.body
  %8 = load i32, ptr %currentNumber, align 4
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8)
  %9 = load i32, ptr %count, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false11
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %currentNumber, align 4
  %inc19 = add nsw i32 %10, 1
  store i32 %inc19, ptr %currentNumber, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %11 = load i32, ptr %count, align 4
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %11)
  ret i32 0
}

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

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
