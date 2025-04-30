; ModuleID = './code/384-29437tests_generator.c'
source_filename = "./code/384-29437tests_generator.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i64 @time(ptr noundef null)
  %conv = trunc i64 %call to i32
  call void @srand(i32 noundef %conv)
  %call1 = call i32 @rand()
  %rem = srem i32 %call1, 4501
  %add = add nsw i32 %rem, 500
  store i32 %add, ptr %n, align 4
  %0 = load i32, ptr %n, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  %call3 = call i32 @rand()
  %rem4 = srem i32 %call3, 10
  %add5 = add nsw i32 %rem4, 1
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add5)
  store i32 1, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4
  %2 = load i32, ptr %n, align 4
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call8 = call i32 @rand()
  %rem9 = srem i32 %call8, 10
  %add10 = add nsw i32 %rem9, 1
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %add10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call13 = call i32 @rand()
  %rem14 = srem i32 %call13, 10
  %add15 = add nsw i32 %rem14, 1
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add15)
  store i32 1, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %for.end
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %n, align 4
  %sub = sub nsw i32 %5, 1
  %cmp18 = icmp slt i32 %4, %sub
  br i1 %cmp18, label %for.body20, label %for.end27

for.body20:                                       ; preds = %for.cond17
  %call21 = call i32 @rand()
  %rem22 = srem i32 %call21, 10
  %add23 = add nsw i32 %rem22, 1
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %add23)
  br label %for.inc25

for.inc25:                                        ; preds = %for.body20
  %6 = load i32, ptr %i, align 4
  %inc26 = add nsw i32 %6, 1
  store i32 %inc26, ptr %i, align 4
  br label %for.cond17, !llvm.loop !7

for.end27:                                        ; preds = %for.cond17
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  %call29 = call i32 @rand()
  %rem30 = srem i32 %call29, 10
  %add31 = add nsw i32 %rem30, 1
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add31)
  store i32 1, ptr %i, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc42, %for.end27
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %n, align 4
  %sub34 = sub nsw i32 %8, 1
  %cmp35 = icmp slt i32 %7, %sub34
  br i1 %cmp35, label %for.body37, label %for.end44

for.body37:                                       ; preds = %for.cond33
  %call38 = call i32 @rand()
  %rem39 = srem i32 %call38, 10
  %add40 = add nsw i32 %rem39, 1
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %add40)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body37
  %9 = load i32, ptr %i, align 4
  %inc43 = add nsw i32 %9, 1
  store i32 %inc43, ptr %i, align 4
  br label %for.cond33, !llvm.loop !8

for.end44:                                        ; preds = %for.cond33
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  ret i32 0
}

declare void @srand(i32 noundef) #1

declare i64 @time(ptr noundef) #1

declare i32 @rand() #1

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
