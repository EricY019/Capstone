; ModuleID = './code/085-1753ex04_33.c'
source_filename = "./code/085-1753ex04_33.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"IX\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"IV\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %current = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp sle i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  store i32 %1, ptr %current, align 4
  %2 = load i32, ptr %current, align 4
  %cmp1 = icmp eq i32 %2, 100
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %current, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = load i32, ptr %current, align 4
  %cmp2 = icmp sge i32 %3, 50
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %4 = load i32, ptr %current, align 4
  %sub = sub nsw i32 %4, 50
  store i32 %sub, ptr %current, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end5
  %5 = load i32, ptr %current, align 4
  %cmp6 = icmp sge i32 %5, 10
  br i1 %cmp6, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %6 = load i32, ptr %current, align 4
  %sub8 = sub nsw i32 %6, 10
  store i32 %sub8, ptr %current, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %7 = load i32, ptr %current, align 4
  %cmp9 = icmp sge i32 %7, 5
  br i1 %cmp9, label %if.then10, label %if.end18

if.then10:                                        ; preds = %while.end
  %8 = load i32, ptr %current, align 4
  %rem = srem i32 %8, 10
  %cmp11 = icmp eq i32 %rem, 9
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then10
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %9 = load i32, ptr %current, align 4
  %sub14 = sub nsw i32 %9, 9
  store i32 %sub14, ptr %current, align 4
  br label %if.end17

if.else:                                          ; preds = %if.then10
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %10 = load i32, ptr %current, align 4
  %sub16 = sub nsw i32 %10, 5
  store i32 %sub16, ptr %current, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then12
  br label %if.end18

if.end18:                                         ; preds = %if.end17, %while.end
  br label %while.cond19

while.cond19:                                     ; preds = %if.end30, %if.end18
  %11 = load i32, ptr %current, align 4
  %cmp20 = icmp sgt i32 %11, 0
  br i1 %cmp20, label %while.body21, label %while.end31

while.body21:                                     ; preds = %while.cond19
  %12 = load i32, ptr %current, align 4
  %rem22 = srem i32 %12, 10
  %cmp23 = icmp eq i32 %rem22, 4
  br i1 %cmp23, label %if.then24, label %if.else27

if.then24:                                        ; preds = %while.body21
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %13 = load i32, ptr %current, align 4
  %sub26 = sub nsw i32 %13, 4
  store i32 %sub26, ptr %current, align 4
  br label %if.end30

if.else27:                                        ; preds = %while.body21
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  %14 = load i32, ptr %current, align 4
  %sub29 = sub nsw i32 %14, 1
  store i32 %sub29, ptr %current, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then24
  br label %while.cond19, !llvm.loop !7

while.end31:                                      ; preds = %while.cond19
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %for.inc

for.inc:                                          ; preds = %while.end31
  %15 = load i32, ptr %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
