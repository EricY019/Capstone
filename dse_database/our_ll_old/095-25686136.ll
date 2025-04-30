; ModuleID = './code/095-25686136.c'
source_filename = "./code/095-25686136.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [30 x i8] c"The %d'th ugly number is %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %check = alloca ptr, align 8
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %count = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call ptr @malloc(i64 noundef 1073741824) #3
  store ptr %call, ptr %check, align 8
  store i64 1, ptr %i, align 8
  %0 = load ptr, ptr %check, align 8
  %arrayidx = getelementptr inbounds i8, ptr %0, i64 1
  store i8 1, ptr %arrayidx, align 1
  store i32 1, ptr %count, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end19, %entry
  %1 = load i32, ptr %count, align 4
  %cmp = icmp slt i32 %1, 1500
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %i, align 8
  %inc = add i64 %2, 1
  store i64 %inc, ptr %i, align 8
  %3 = load i64, ptr %i, align 8
  %rem = urem i64 %3, 2
  %tobool = icmp ne i64 %rem, 0
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %4 = load ptr, ptr %check, align 8
  %5 = load i64, ptr %i, align 8
  %div = udiv i64 %5, 2
  %arrayidx1 = getelementptr inbounds i8, ptr %4, i64 %div
  %6 = load i8, ptr %arrayidx1, align 1
  %7 = load ptr, ptr %check, align 8
  %8 = load i64, ptr %i, align 8
  %arrayidx2 = getelementptr inbounds i8, ptr %7, i64 %8
  store i8 %6, ptr %arrayidx2, align 1
  br label %if.end19

if.else:                                          ; preds = %while.body
  %9 = load i64, ptr %i, align 8
  %rem3 = urem i64 %9, 3
  %tobool4 = icmp ne i64 %rem3, 0
  br i1 %tobool4, label %if.else9, label %if.then5

if.then5:                                         ; preds = %if.else
  %10 = load ptr, ptr %check, align 8
  %11 = load i64, ptr %i, align 8
  %div6 = udiv i64 %11, 3
  %arrayidx7 = getelementptr inbounds i8, ptr %10, i64 %div6
  %12 = load i8, ptr %arrayidx7, align 1
  %13 = load ptr, ptr %check, align 8
  %14 = load i64, ptr %i, align 8
  %arrayidx8 = getelementptr inbounds i8, ptr %13, i64 %14
  store i8 %12, ptr %arrayidx8, align 1
  br label %if.end18

if.else9:                                         ; preds = %if.else
  %15 = load i64, ptr %i, align 8
  %rem10 = urem i64 %15, 5
  %tobool11 = icmp ne i64 %rem10, 0
  br i1 %tobool11, label %if.else16, label %if.then12

if.then12:                                        ; preds = %if.else9
  %16 = load ptr, ptr %check, align 8
  %17 = load i64, ptr %i, align 8
  %div13 = udiv i64 %17, 5
  %arrayidx14 = getelementptr inbounds i8, ptr %16, i64 %div13
  %18 = load i8, ptr %arrayidx14, align 1
  %19 = load ptr, ptr %check, align 8
  %20 = load i64, ptr %i, align 8
  %arrayidx15 = getelementptr inbounds i8, ptr %19, i64 %20
  store i8 %18, ptr %arrayidx15, align 1
  br label %if.end

if.else16:                                        ; preds = %if.else9
  %21 = load ptr, ptr %check, align 8
  %22 = load i64, ptr %i, align 8
  %arrayidx17 = getelementptr inbounds i8, ptr %21, i64 %22
  store i8 0, ptr %arrayidx17, align 1
  br label %if.end

if.end:                                           ; preds = %if.else16, %if.then12
  br label %if.end18

if.end18:                                         ; preds = %if.end, %if.then5
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  %23 = load ptr, ptr %check, align 8
  %24 = load i64, ptr %i, align 8
  %arrayidx20 = getelementptr inbounds i8, ptr %23, i64 %24
  %25 = load i8, ptr %arrayidx20, align 1
  %conv = sext i8 %25 to i32
  %26 = load i32, ptr %count, align 4
  %add = add nsw i32 %26, %conv
  store i32 %add, ptr %count, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %27 = load i64, ptr %i, align 8
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef 1500, i64 noundef %27)
  ret i32 0
}

; Function Attrs: allocsize(0)
declare ptr @malloc(i64 noundef) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { allocsize(0) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
