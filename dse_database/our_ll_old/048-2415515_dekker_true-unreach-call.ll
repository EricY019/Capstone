; ModuleID = './code/048-2415515_dekker_true-unreach-call.c'
source_filename = "./code/048-2415515_dekker_true-unreach-call.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@flag1 = global i32 0, align 4
@flag2 = global i32 0, align 4
@turn = global i32 0, align 4
@x = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @thr1(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  store i32 1, ptr @flag1, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr @flag2, align 4
  %cmp = icmp sge i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end5

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr @turn, align 4
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr @flag1, align 4
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %if.then
  %2 = load i32, ptr @turn, align 4
  %cmp3 = icmp ne i32 %2, 0
  br i1 %cmp3, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond2
  br label %while.cond2, !llvm.loop !5

while.end:                                        ; preds = %while.cond2
  store i32 1, ptr @flag1, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %while.body
  br label %while.cond, !llvm.loop !7

while.end5:                                       ; preds = %while.cond
  store i32 0, ptr @x, align 4
  %3 = load i32, ptr @x, align 4
  %cmp6 = icmp sle i32 %3, 0
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %while.end5
  br label %ERROR

ERROR:                                            ; preds = %if.then7
  call void @__VERIFIER_error() #3
  unreachable

if.end8:                                          ; preds = %while.end5
  store i32 1, ptr @turn, align 4
  store i32 0, ptr @flag1, align 4
  ret ptr null
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define ptr @thr2(ptr noundef %arg) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  store i32 1, ptr @flag2, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, ptr @flag1, align 4
  %cmp = icmp sge i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end5

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr @turn, align 4
  %cmp1 = icmp ne i32 %1, 1
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 0, ptr @flag2, align 4
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %if.then
  %2 = load i32, ptr @turn, align 4
  %cmp3 = icmp ne i32 %2, 1
  br i1 %cmp3, label %while.body4, label %while.end

while.body4:                                      ; preds = %while.cond2
  br label %while.cond2, !llvm.loop !8

while.end:                                        ; preds = %while.cond2
  store i32 1, ptr @flag2, align 4
  br label %if.end

if.end:                                           ; preds = %while.end, %while.body
  br label %while.cond, !llvm.loop !9

while.end5:                                       ; preds = %while.cond
  store i32 1, ptr @x, align 4
  %3 = load i32, ptr @x, align 4
  %cmp6 = icmp sge i32 %3, 1
  br i1 %cmp6, label %if.end8, label %if.then7

if.then7:                                         ; preds = %while.end5
  br label %ERROR

ERROR:                                            ; preds = %if.then7
  call void @__VERIFIER_error() #3
  unreachable

if.end8:                                          ; preds = %while.end5
  store i32 1, ptr @turn, align 4
  store i32 0, ptr @flag2, align 4
  ret ptr null
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %t = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  %call = call i32 @pthread_create(ptr noundef %t, ptr noundef null, ptr noundef @thr1, ptr noundef null)
  %call1 = call ptr @thr2(ptr noundef null)
  ret i32 0
}

declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { noreturn }

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
!9 = distinct !{!9, !6}
