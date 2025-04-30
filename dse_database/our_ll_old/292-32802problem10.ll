; ModuleID = './code/292-32802problem10.c'
source_filename = "./code/292-32802problem10.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [13 x i8] c"ANSWER: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i64 @sieve_and_sum(i32 noundef %max) #0 {
entry:
  %max.addr = alloca i32, align 4
  %sum = alloca i64, align 8
  %list = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  store i32 %max, ptr %max.addr, align 4
  store i64 0, ptr %sum, align 8
  %0 = load i32, ptr %max.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call ptr @calloc(i64 noundef %conv, i64 noundef 4) #3
  store ptr %call, ptr %list, align 8
  store i64 2, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %1 = load i64, ptr %i, align 8
  %2 = load i32, ptr %max.addr, align 4
  %conv1 = sext i32 %2 to i64
  %cmp = icmp slt i64 %1, %conv1
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %list, align 8
  %4 = load i64, ptr %i, align 8
  %arrayidx = getelementptr inbounds i32, ptr %3, i64 %4
  %5 = load i32, ptr %arrayidx, align 4
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load i64, ptr %i, align 8
  store i64 %6, ptr %j, align 8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %if.then
  %7 = load i64, ptr %i, align 8
  %8 = load i64, ptr %j, align 8
  %mul = mul nsw i64 %7, %8
  %9 = load i32, ptr %max.addr, align 4
  %conv6 = sext i32 %9 to i64
  %cmp7 = icmp slt i64 %mul, %conv6
  br i1 %cmp7, label %for.body9, label %for.end

for.body9:                                        ; preds = %for.cond5
  %10 = load ptr, ptr %list, align 8
  %11 = load i64, ptr %i, align 8
  %12 = load i64, ptr %j, align 8
  %mul10 = mul nsw i64 %11, %12
  %arrayidx11 = getelementptr inbounds i32, ptr %10, i64 %mul10
  store i32 -1, ptr %arrayidx11, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body9
  %13 = load i64, ptr %j, align 8
  %inc = add nsw i64 %13, 1
  store i64 %inc, ptr %j, align 8
  br label %for.cond5, !llvm.loop !5

for.end:                                          ; preds = %for.cond5
  br label %if.end

if.end:                                           ; preds = %for.end, %for.body
  br label %for.inc12

for.inc12:                                        ; preds = %if.end
  %14 = load i64, ptr %i, align 8
  %inc13 = add nsw i64 %14, 1
  store i64 %inc13, ptr %i, align 8
  br label %for.cond, !llvm.loop !7

for.end14:                                        ; preds = %for.cond
  store i64 2, ptr %i, align 8
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc25, %for.end14
  %15 = load i64, ptr %i, align 8
  %16 = load i32, ptr %max.addr, align 4
  %conv16 = sext i32 %16 to i64
  %cmp17 = icmp slt i64 %15, %conv16
  br i1 %cmp17, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond15
  %17 = load ptr, ptr %list, align 8
  %18 = load i64, ptr %i, align 8
  %arrayidx20 = getelementptr inbounds i32, ptr %17, i64 %18
  %19 = load i32, ptr %arrayidx20, align 4
  %cmp21 = icmp eq i32 %19, 0
  br i1 %cmp21, label %if.then23, label %if.end24

if.then23:                                        ; preds = %for.body19
  %20 = load i64, ptr %i, align 8
  %21 = load i64, ptr %sum, align 8
  %add = add nsw i64 %21, %20
  store i64 %add, ptr %sum, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %for.body19
  br label %for.inc25

for.inc25:                                        ; preds = %if.end24
  %22 = load i64, ptr %i, align 8
  %inc26 = add nsw i64 %22, 1
  store i64 %inc26, ptr %i, align 8
  br label %for.cond15, !llvm.loop !8

for.end27:                                        ; preds = %for.cond15
  %23 = load i64, ptr %sum, align 8
  ret i64 %23
}

; Function Attrs: allocsize(0,1)
declare ptr @calloc(i64 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sum = alloca i64, align 8
  store i32 0, ptr %retval, align 4
  store i64 0, ptr %sum, align 8
  %call = call i64 @sieve_and_sum(i32 noundef 2000000)
  store i64 %call, ptr %sum, align 8
  %0 = load i64, ptr %sum, align 8
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i64 noundef %0)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0,1) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0,1) }

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
