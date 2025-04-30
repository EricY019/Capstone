; ModuleID = './code/352-31227euler13.c'
source_filename = "./code/352-31227euler13.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@__stdoutp = external global ptr, align 8
@.str = private unnamed_addr constant [11 x i8] c"number.txt\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%lld += %llu * %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"result: %lld\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %file = alloca ptr, align 8
  %c = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %numbers = alloca [100 x [50 x i32]], align 4
  %_12digits = alloca i64, align 8
  %result = alloca i64, align 8
  %i = alloca i32, align 4
  %k = alloca i64, align 8
  %a = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %x, align 4
  store i32 0, ptr %y, align 4
  %0 = load ptr, ptr @__stdoutp, align 8
  %call = call i32 @setvbuf(ptr noundef %0, ptr noundef null, i32 noundef 2, i64 noundef 0)
  %call1 = call ptr @"\01_fopen"(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %call1, ptr %file, align 8
  %1 = load ptr, ptr %file, align 8
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end8

if.then:                                          ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end, %if.then
  %2 = load ptr, ptr %file, align 8
  %call2 = call i32 @getc(ptr noundef %2)
  store i32 %call2, ptr %c, align 4
  %cmp = icmp ne i32 %call2, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr %c, align 4
  %sub = sub nsw i32 %3, 48
  %4 = load i32, ptr %x, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x [50 x i32]], ptr %numbers, i64 0, i64 %idxprom
  %5 = load i32, ptr %y, align 4
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [50 x i32], ptr %arrayidx, i64 0, i64 %idxprom3
  store i32 %sub, ptr %arrayidx4, align 4
  %6 = load i32, ptr %y, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %y, align 4
  %7 = load i32, ptr %y, align 4
  %cmp5 = icmp eq i32 %7, 50
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  store i32 0, ptr %y, align 4
  %8 = load i32, ptr %x, align 4
  %inc7 = add nsw i32 %8, 1
  store i32 %inc7, ptr %x, align 4
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %if.end8

if.end8:                                          ; preds = %while.end, %entry
  store i64 0, ptr %_12digits, align 8
  store i64 0, ptr %result, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %if.end8
  %9 = load i32, ptr %i, align 4
  %cmp9 = icmp slt i32 %9, 100
  br i1 %cmp9, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  store i64 1, ptr %k, align 8
  store i32 10, ptr %a, align 4
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc, %for.body
  %10 = load i32, ptr %a, align 4
  %cmp11 = icmp sge i32 %10, 0
  br i1 %cmp11, label %for.body12, label %for.end

for.body12:                                       ; preds = %for.cond10
  %11 = load i64, ptr %k, align 8
  %12 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [100 x [50 x i32]], ptr %numbers, i64 0, i64 %idxprom13
  %13 = load i32, ptr %a, align 4
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [50 x i32], ptr %arrayidx14, i64 0, i64 %idxprom15
  %14 = load i32, ptr %arrayidx16, align 4
  %conv = sext i32 %14 to i64
  %mul = mul i64 %11, %conv
  %15 = load i64, ptr %_12digits, align 8
  %add = add i64 %15, %mul
  store i64 %add, ptr %_12digits, align 8
  %16 = load i64, ptr %_12digits, align 8
  %17 = load i64, ptr %k, align 8
  %18 = load i32, ptr %i, align 4
  %idxprom17 = sext i32 %18 to i64
  %arrayidx18 = getelementptr inbounds [100 x [50 x i32]], ptr %numbers, i64 0, i64 %idxprom17
  %19 = load i32, ptr %a, align 4
  %idxprom19 = sext i32 %19 to i64
  %arrayidx20 = getelementptr inbounds [50 x i32], ptr %arrayidx18, i64 0, i64 %idxprom19
  %20 = load i32, ptr %arrayidx20, align 4
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i64 noundef %16, i64 noundef %17, i32 noundef %20)
  %21 = load i64, ptr %k, align 8
  %mul22 = mul i64 10, %21
  store i64 %mul22, ptr %k, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body12
  %22 = load i32, ptr %a, align 4
  %dec = add nsw i32 %22, -1
  store i32 %dec, ptr %a, align 4
  br label %for.cond10, !llvm.loop !7

for.end:                                          ; preds = %for.cond10
  %23 = load i64, ptr %_12digits, align 8
  %24 = load i64, ptr %result, align 8
  %add23 = add i64 %24, %23
  store i64 %add23, ptr %result, align 8
  store i64 0, ptr %_12digits, align 8
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %25 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end26:                                        ; preds = %for.cond
  %26 = load i64, ptr %result, align 8
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i64 noundef %26)
  ret i32 0
}

declare i32 @setvbuf(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #1

declare ptr @"\01_fopen"(ptr noundef, ptr noundef) #1

declare i32 @getc(ptr noundef) #1

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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
