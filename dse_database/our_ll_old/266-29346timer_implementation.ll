; ModuleID = './code/266-29346timer_implementation.c'
source_filename = "./code/266-29346timer_implementation.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.sigaction = type { %union.__sigaction_u, i32, i32 }
%union.__sigaction_u = type { ptr }

@stop = global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Counted till %u \0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @sigalarm_handler(i32 noundef %sig) #0 {
entry:
  %sig.addr = alloca i32, align 4
  store i32 %sig, ptr %sig.addr, align 4
  store volatile i32 1, ptr @stop, align 4
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %sinst = alloca %struct.sigaction, align 8
  %counter = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %counter, align 4
  %sa_mask = getelementptr inbounds %struct.sigaction, ptr %sinst, i32 0, i32 1
  store i32 0, ptr %sa_mask, align 8
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %sinst, i32 0, i32 2
  store i32 0, ptr %sa_flags, align 4
  %__sigaction_u = getelementptr inbounds %struct.sigaction, ptr %sinst, i32 0, i32 0
  store ptr @sigalarm_handler, ptr %__sigaction_u, align 8
  %call = call i32 @sigaction(i32 noundef 14, ptr noundef %sinst, ptr noundef null)
  %call1 = call i32 @alarm(i32 noundef 10)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load volatile i32, ptr @stop, align 4
  %tobool = icmp ne i32 %0, 0
  %lnot = xor i1 %tobool, true
  br i1 %lnot, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %counter, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %counter, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %2 = load i32, ptr %counter, align 4
  %call2 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  ret i32 0
}

declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @alarm(i32 noundef) #1

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
