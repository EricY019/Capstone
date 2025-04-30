; ModuleID = './code/151-5515play_nice.c'
source_filename = "./code/151-5515play_nice.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@did_alarm = global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"With a nice of %+.2d, we have counted to %lld in %d seconds.\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %call = call ptr @signal(i32 noundef 14, ptr noundef @trap_alarm)
  call void @demo(i32 noundef -10, i32 noundef 1)
  call void @demo(i32 noundef -5, i32 noundef 1)
  call void @demo(i32 noundef 0, i32 noundef 1)
  call void @demo(i32 noundef 5, i32 noundef 1)
  call void @demo(i32 noundef 10, i32 noundef 1)
  ret i32 0
}

declare ptr @signal(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @trap_alarm(i32 noundef %signum) #0 {
entry:
  %signum.addr = alloca i32, align 4
  store i32 %signum, ptr %signum.addr, align 4
  store i32 1, ptr @did_alarm, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @demo(i32 noundef %nice, i32 noundef %seconds) #0 {
entry:
  %nice.addr = alloca i32, align 4
  %seconds.addr = alloca i32, align 4
  %op_pad = alloca [5 x i8], align 1
  %counter = alloca i64, align 8
  %next_op = alloca i64, align 8
  store i32 %nice, ptr %nice.addr, align 4
  store i32 %seconds, ptr %seconds.addr, align 4
  store i32 0, ptr @did_alarm, align 4
  %arraydecay = getelementptr inbounds [5 x i8], ptr %op_pad, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 1 %arraydecay, i8 0, i64 5, i1 false)
  store i64 0, ptr %counter, align 8
  store i64 2, ptr %next_op, align 8
  %0 = load i32, ptr %seconds.addr, align 4
  %call = call i32 @alarm(i32 noundef %0)
  br label %while.cond

while.cond:                                       ; preds = %sw.epilog, %entry
  %1 = load i32, ptr @did_alarm, align 4
  %tobool = icmp ne i32 %1, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %arraydecay1 = getelementptr inbounds [5 x i8], ptr %op_pad, i64 0, i64 0
  %2 = load i64, ptr %next_op, align 8
  %call2 = call i32 (ptr, i32, i64, ptr, ...) @__sprintf_chk(ptr noundef %arraydecay1, i32 noundef 0, i64 noundef 5, ptr noundef @.str, i64 noundef %2)
  %arraydecay3 = getelementptr inbounds [5 x i8], ptr %op_pad, i64 0, i64 0
  %call4 = call i64 @strtol(ptr noundef %arraydecay3, ptr noundef null, i32 noundef 10)
  store i64 %call4, ptr %next_op, align 8
  %3 = load i64, ptr %next_op, align 8
  %4 = load i64, ptr %counter, align 8
  %add = add nsw i64 %4, %3
  store i64 %add, ptr %counter, align 8
  %5 = load i64, ptr %next_op, align 8
  switch i64 %5, label %sw.default [
    i64 2, label %sw.bb
  ]

sw.bb:                                            ; preds = %while.body
  store i64 -1, ptr %next_op, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %while.body
  store i64 2, ptr %next_op, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %nice.addr, align 4
  %7 = load i64, ptr %counter, align 8
  %8 = load i32, ptr %seconds.addr, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6, i64 noundef %7, i32 noundef %8)
  %call6 = call i32 @"\01_sleep"(i32 noundef 1)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @alarm(i32 noundef) #1

declare i32 @__sprintf_chk(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ...) #1

declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @"\01_sleep"(i32 noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
