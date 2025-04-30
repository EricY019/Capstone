; ModuleID = './code/339-15920eg10_21.c'
source_filename = "./code/339-15920eg10_21.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.sigaction = type { %union.__sigaction_u, i32, i32 }
%union.__sigaction_u = type { ptr }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @Sleep(i32 noundef %nsecs) #0 {
entry:
  %__signo.addr.i9 = alloca i32, align 4
  %__signo.addr.i = alloca i32, align 4
  %nsecs.addr = alloca i32, align 4
  %newact = alloca %struct.sigaction, align 8
  %oldact = alloca %struct.sigaction, align 8
  %newmask = alloca i32, align 4
  %oldmask = alloca i32, align 4
  %suspmask = alloca i32, align 4
  %unslept = alloca i32, align 4
  store i32 %nsecs, ptr %nsecs.addr, align 4
  %__sigaction_u = getelementptr inbounds %struct.sigaction, ptr %newact, i32 0, i32 0
  store ptr @sig_alrm, ptr %__sigaction_u, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, ptr %newact, i32 0, i32 1
  store i32 0, ptr %sa_mask, align 8
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %newact, i32 0, i32 2
  store i32 0, ptr %sa_flags, align 4
  %call = call i32 @sigaction(i32 noundef 14, ptr noundef %newact, ptr noundef %oldact)
  store i32 0, ptr %newmask, align 4
  store i32 14, ptr %__signo.addr.i9, align 4
  %0 = load i32, ptr %__signo.addr.i9, align 4
  %cmp.i10 = icmp sgt i32 %0, 32
  br i1 %cmp.i10, label %cond.true.i15, label %cond.false.i11

cond.true.i15:                                    ; preds = %entry
  br label %__sigbits.exit16

cond.false.i11:                                   ; preds = %entry
  %1 = load i32, ptr %__signo.addr.i9, align 4
  %sub.i12 = sub nsw i32 %1, 1
  %shl.i13 = shl i32 1, %sub.i12
  br label %__sigbits.exit16

__sigbits.exit16:                                 ; preds = %cond.true.i15, %cond.false.i11
  %cond.i14 = phi i32 [ 0, %cond.true.i15 ], [ %shl.i13, %cond.false.i11 ]
  %2 = load i32, ptr %newmask, align 4
  %or = or i32 %2, %cond.i14
  store i32 %or, ptr %newmask, align 4
  %call2 = call i32 @sigprocmask(i32 noundef 1, ptr noundef %newmask, ptr noundef %oldmask)
  %3 = load i32, ptr %nsecs.addr, align 4
  %call3 = call i32 @alarm(i32 noundef %3)
  %4 = load i32, ptr %oldmask, align 4
  store i32 %4, ptr %suspmask, align 4
  store i32 14, ptr %__signo.addr.i, align 4
  %5 = load i32, ptr %__signo.addr.i, align 4
  %cmp.i = icmp sgt i32 %5, 32
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %__sigbits.exit16
  br label %__sigbits.exit

cond.false.i:                                     ; preds = %__sigbits.exit16
  %6 = load i32, ptr %__signo.addr.i, align 4
  %sub.i = sub nsw i32 %6, 1
  %shl.i = shl i32 1, %sub.i
  br label %__sigbits.exit

__sigbits.exit:                                   ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ 0, %cond.true.i ], [ %shl.i, %cond.false.i ]
  %not = xor i32 %cond.i, -1
  %7 = load i32, ptr %suspmask, align 4
  %and = and i32 %7, %not
  store i32 %and, ptr %suspmask, align 4
  %call5 = call i32 @"\01_sigsuspend"(ptr noundef %suspmask)
  %call6 = call i32 @alarm(i32 noundef 0)
  store i32 %call6, ptr %unslept, align 4
  %call7 = call i32 @sigaction(i32 noundef 14, ptr noundef %oldact, ptr noundef null)
  %call8 = call i32 @sigprocmask(i32 noundef 3, ptr noundef %oldmask, ptr noundef null)
  %8 = load i32, ptr %unslept, align 4
  ret i32 %8
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @sig_alrm(i32 noundef %signo) #0 {
entry:
  %signo.addr = alloca i32, align 4
  store i32 %signo, ptr %signo.addr, align 4
  ret void
}

declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @alarm(i32 noundef) #1

declare i32 @"\01_sigsuspend"(ptr noundef) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %unslept = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @Sleep(i32 noundef 10)
  store i32 %call, ptr %unslept, align 4
  %0 = load i32, ptr %unslept, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
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
