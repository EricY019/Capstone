; ModuleID = './code/048-34449while.c'
source_filename = "./code/048-34449while.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %num_times_run = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %a, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %a, align 4
  %cmp = icmp ne i32 %0, 5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %a, align 4
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %a, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %2 = load i32, ptr %a, align 4
  %cmp1 = icmp ne i32 %2, 5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %while.end
  store i32 0, ptr %b, align 4
  store i32 0, ptr %a, align 4
  br label %while.cond2

while.cond2:                                      ; preds = %while.body4, %if.end
  %3 = load i32, ptr %a, align 4
  %cmp3 = icmp ne i32 %3, 5
  br i1 %cmp3, label %while.body4, label %while.end7

while.body4:                                      ; preds = %while.cond2
  %4 = load i32, ptr %b, align 4
  %5 = load i32, ptr %a, align 4
  %add5 = add nsw i32 %4, %5
  store i32 %add5, ptr %b, align 4
  %6 = load i32, ptr %a, align 4
  %add6 = add nsw i32 %6, 1
  store i32 %add6, ptr %a, align 4
  br label %while.cond2, !llvm.loop !7

while.end7:                                       ; preds = %while.cond2
  %7 = load i32, ptr %a, align 4
  %cmp8 = icmp ne i32 %7, 5
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %while.end7
  store i32 2, ptr %retval, align 4
  br label %return

if.end10:                                         ; preds = %while.end7
  %8 = load i32, ptr %b, align 4
  %cmp11 = icmp ne i32 %8, 10
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end10
  store i32 3, ptr %retval, align 4
  br label %return

if.end13:                                         ; preds = %if.end10
  br label %while.cond14

while.cond14:                                     ; preds = %if.end13
  %9 = load i32, ptr %b, align 4
  %cmp15 = icmp eq i32 %9, 100
  br i1 %cmp15, label %while.body16, label %while.end17

while.body16:                                     ; preds = %while.cond14
  store i32 4, ptr %retval, align 4
  br label %return

while.end17:                                      ; preds = %while.cond14
  store i32 0, ptr %num_times_run, align 4
  br label %while.cond18

while.cond18:                                     ; preds = %if.end25, %while.end17
  %10 = load i32, ptr %b, align 4
  %cmp19 = icmp eq i32 %10, 10
  br i1 %cmp19, label %while.body20, label %while.end26

while.body20:                                     ; preds = %while.cond18
  %11 = load i32, ptr %b, align 4
  %add21 = add nsw i32 %11, 1
  store i32 %add21, ptr %b, align 4
  %12 = load i32, ptr %num_times_run, align 4
  %add22 = add nsw i32 %12, 1
  store i32 %add22, ptr %num_times_run, align 4
  %13 = load i32, ptr %num_times_run, align 4
  %cmp23 = icmp ne i32 %13, 1
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %while.body20
  store i32 5, ptr %retval, align 4
  br label %return

if.end25:                                         ; preds = %while.body20
  br label %while.cond18, !llvm.loop !8

while.end26:                                      ; preds = %while.cond18
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %while.end26, %if.then24, %while.body16, %if.then12, %if.then9, %if.then
  %14 = load i32, ptr %retval, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
