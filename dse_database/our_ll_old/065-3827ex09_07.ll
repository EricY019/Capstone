; ModuleID = './code/065-3827ex09_07.c'
source_filename = "./code/065-3827ex09_07.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Value\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Total characters\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"\09%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %x = alloca [10 x i32], align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  store i32 0, ptr %sum, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = call i32 @getRandomNumber(i32 noundef 1000)
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [10 x i32], ptr %x, i64 0, i64 %idxprom
  store i32 %call2, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2)
  store i32 0, ptr %i, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc15, %for.end
  %3 = load i32, ptr %i, align 4
  %cmp5 = icmp slt i32 %3, 10
  br i1 %cmp5, label %for.body7, label %for.end17

for.body7:                                        ; preds = %for.cond4
  %4 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %4 to i64
  %arrayidx9 = getelementptr inbounds [10 x i32], ptr %x, i64 0, i64 %idxprom8
  %5 = load i32, ptr %arrayidx9, align 4
  %call10 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, i32 noundef %5)
  %6 = load i32, ptr %sum, align 4
  %add = add nsw i32 %6, %call10
  store i32 %add, ptr %sum, align 4
  %7 = load i32, ptr %sum, align 4
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %7)
  %call12 = call i32 @getRandomNumber(i32 noundef 1000)
  %8 = load i32, ptr %i, align 4
  %idxprom13 = sext i32 %8 to i64
  %arrayidx14 = getelementptr inbounds [10 x i32], ptr %x, i64 0, i64 %idxprom13
  store i32 %call12, ptr %arrayidx14, align 4
  br label %for.inc15

for.inc15:                                        ; preds = %for.body7
  %9 = load i32, ptr %i, align 4
  %inc16 = add nsw i32 %9, 1
  store i32 %inc16, ptr %i, align 4
  br label %for.cond4, !llvm.loop !7

for.end17:                                        ; preds = %for.cond4
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @getRandomNumber(i32 noundef %max) #0 {
entry:
  %max.addr = alloca i32, align 4
  store i32 %max, ptr %max.addr, align 4
  %call = call i32 @rand()
  %0 = load i32, ptr %max.addr, align 4
  %rem = srem i32 %call, %0
  %add = add nsw i32 %rem, 1
  ret i32 %add
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @rand() #1

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
