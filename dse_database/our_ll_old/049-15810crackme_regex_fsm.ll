; ModuleID = './code/049-15810crackme_regex_fsm.c'
source_filename = "./code/049-15810crackme_regex_fsm.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [16 x i8] c"./fsm <string>\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Good boy.\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"Bad boy.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define zeroext i8 @check(ptr noundef %s) #0 {
entry:
  %retval = alloca i8, align 1
  %s.addr = alloca ptr, align 8
  %state = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  store i32 0, ptr %state, align 4
  store i32 0, ptr %i, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i32, ptr %state, align 4
  switch i32 %0, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb8
    i32 3, label %sw.bb15
    i32 4, label %sw.bb15
    i32 5, label %sw.bb15
    i32 6, label %sw.bb15
    i32 7, label %sw.bb25
  ]

sw.bb:                                            ; preds = %do.body
  %1 = load ptr, ptr %s.addr, align 8
  %2 = load i8, ptr %1, align 1
  %conv = sext i8 %2 to i32
  %cmp = icmp eq i32 %conv, 72
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.bb
  store i32 1, ptr %state, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog

sw.bb2:                                           ; preds = %do.body
  %3 = load ptr, ptr %s.addr, align 8
  %4 = load i8, ptr %3, align 1
  %conv3 = sext i8 %4 to i32
  %cmp4 = icmp eq i32 %conv3, 105
  br i1 %cmp4, label %if.then6, label %if.else

if.then6:                                         ; preds = %sw.bb2
  store i32 2, ptr %state, align 4
  br label %if.end7

if.else:                                          ; preds = %sw.bb2
  store i8 0, ptr %retval, align 1
  br label %return

if.end7:                                          ; preds = %if.then6
  br label %sw.epilog

sw.bb8:                                           ; preds = %do.body
  %5 = load ptr, ptr %s.addr, align 8
  %6 = load i8, ptr %5, align 1
  %conv9 = sext i8 %6 to i32
  %cmp10 = icmp eq i32 %conv9, 45
  br i1 %cmp10, label %if.then12, label %if.else13

if.then12:                                        ; preds = %sw.bb8
  store i32 3, ptr %state, align 4
  br label %if.end14

if.else13:                                        ; preds = %sw.bb8
  store i8 0, ptr %retval, align 1
  br label %return

if.end14:                                         ; preds = %if.then12
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.body, %do.body, %do.body, %do.body
  %7 = load ptr, ptr %s.addr, align 8
  %8 = load i8, ptr %7, align 1
  %conv16 = sext i8 %8 to i32
  %cmp17 = icmp sge i32 %conv16, 48
  br i1 %cmp17, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %sw.bb15
  %9 = load ptr, ptr %s.addr, align 8
  %10 = load i8, ptr %9, align 1
  %conv19 = sext i8 %10 to i32
  %cmp20 = icmp sle i32 %conv19, 57
  br i1 %cmp20, label %if.then22, label %if.else23

if.then22:                                        ; preds = %land.lhs.true
  %11 = load i32, ptr %state, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %state, align 4
  br label %if.end24

if.else23:                                        ; preds = %land.lhs.true, %sw.bb15
  store i8 0, ptr %retval, align 1
  br label %return

if.end24:                                         ; preds = %if.then22
  br label %sw.epilog

sw.bb25:                                          ; preds = %do.body
  store i8 1, ptr %retval, align 1
  br label %return

sw.epilog:                                        ; preds = %do.body, %if.end24, %if.end14, %if.end7, %if.end
  br label %do.cond

do.cond:                                          ; preds = %sw.epilog
  %12 = load ptr, ptr %s.addr, align 8
  %incdec.ptr = getelementptr inbounds i8, ptr %12, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8
  %13 = load i8, ptr %12, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %do.body, label %do.end, !llvm.loop !5

do.end:                                           ; preds = %do.cond
  store i8 0, ptr %retval, align 1
  br label %return

return:                                           ; preds = %do.end, %sw.bb25, %if.else23, %if.else13, %if.else
  %14 = load i8, ptr %retval, align 1
  ret i8 %14
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load i32, ptr %argc.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %argv.addr, align 8
  %arrayidx = getelementptr inbounds ptr, ptr %1, i64 1
  %2 = load ptr, ptr %arrayidx, align 8
  %call1 = call zeroext i8 @check(ptr noundef %2)
  %tobool = icmp ne i8 %call1, 0
  br i1 %tobool, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end5

if.else:                                          ; preds = %if.end
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
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
