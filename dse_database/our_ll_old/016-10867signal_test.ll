; ModuleID = './code/016-10867signal_test.c'
source_filename = "./code/016-10867signal_test.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.sigaction = type { %union.__sigaction_u, i32, i32 }
%union.__sigaction_u = type { ptr }
%struct.__siginfo = type { i32, i32, i32, i32, i32, i32, ptr, %union.sigval, i64, [7 x i64] }
%union.sigval = type { ptr }

@.str = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"sighold\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"holding...\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"raise\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"raised...\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"unblocking...\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"sigprocmask\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"unblocked!\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Alarm! %d %d %d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %__signo.addr.i33 = alloca i32, align 4
  %__signo.addr.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %act = alloca %struct.sigaction, align 8
  %set = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %__sigaction_u = getelementptr inbounds %struct.sigaction, ptr %act, i32 0, i32 0
  store ptr @alarm_handler, ptr %__sigaction_u, align 8
  %sa_mask = getelementptr inbounds %struct.sigaction, ptr %act, i32 0, i32 1
  store i32 0, ptr %sa_mask, align 8
  %sa_flags = getelementptr inbounds %struct.sigaction, ptr %act, i32 0, i32 2
  store i32 64, ptr %sa_flags, align 4
  %call = call i32 @sigaction(i32 noundef 14, ptr noundef %act, ptr noundef null)
  %cmp = icmp ne i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @perror(ptr noundef @.str) #3
  store i32 1, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @sigaction(i32 noundef 30, ptr noundef %act, ptr noundef null)
  %cmp2 = icmp ne i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @perror(ptr noundef @.str) #3
  store i32 1, ptr %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @sighold(i32 noundef 14)
  %cmp6 = icmp ne i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end4
  call void @perror(ptr noundef @.str.1) #3
  store i32 1, ptr %retval, align 4
  br label %return

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @sighold(i32 noundef 30)
  %cmp10 = icmp ne i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end8
  call void @perror(ptr noundef @.str.1) #3
  store i32 1, ptr %retval, align 4
  br label %return

if.end12:                                         ; preds = %if.end8
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  %call14 = call i32 @raise(i32 noundef 14)
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end17

if.then16:                                        ; preds = %if.end12
  call void @perror(ptr noundef @.str.3) #3
  store i32 1, ptr %retval, align 4
  br label %return

if.end17:                                         ; preds = %if.end12
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call19 = call i32 @raise(i32 noundef 30)
  %cmp20 = icmp ne i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @perror(ptr noundef @.str.3) #3
  store i32 1, ptr %retval, align 4
  br label %return

if.end22:                                         ; preds = %if.end17
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  store i32 0, ptr %set, align 4
  store i32 14, ptr %__signo.addr.i33, align 4
  %0 = load i32, ptr %__signo.addr.i33, align 4
  %cmp.i34 = icmp sgt i32 %0, 32
  br i1 %cmp.i34, label %cond.true.i39, label %cond.false.i35

cond.true.i39:                                    ; preds = %if.end22
  br label %__sigbits.exit40

cond.false.i35:                                   ; preds = %if.end22
  %1 = load i32, ptr %__signo.addr.i33, align 4
  %sub.i36 = sub nsw i32 %1, 1
  %shl.i37 = shl i32 1, %sub.i36
  br label %__sigbits.exit40

__sigbits.exit40:                                 ; preds = %cond.true.i39, %cond.false.i35
  %cond.i38 = phi i32 [ 0, %cond.true.i39 ], [ %shl.i37, %cond.false.i35 ]
  %2 = load i32, ptr %set, align 4
  %or = or i32 %2, %cond.i38
  store i32 %or, ptr %set, align 4
  store i32 30, ptr %__signo.addr.i, align 4
  %3 = load i32, ptr %__signo.addr.i, align 4
  %cmp.i = icmp sgt i32 %3, 32
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %__sigbits.exit40
  br label %__sigbits.exit

cond.false.i:                                     ; preds = %__sigbits.exit40
  %4 = load i32, ptr %__signo.addr.i, align 4
  %sub.i = sub nsw i32 %4, 1
  %shl.i = shl i32 1, %sub.i
  br label %__sigbits.exit

__sigbits.exit:                                   ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ 0, %cond.true.i ], [ %shl.i, %cond.false.i ]
  %5 = load i32, ptr %set, align 4
  %or27 = or i32 %5, %cond.i
  store i32 %or27, ptr %set, align 4
  %call28 = call i32 @sigprocmask(i32 noundef 2, ptr noundef %set, ptr noundef null)
  %cmp29 = icmp ne i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %__sigbits.exit
  call void @perror(ptr noundef @.str.6) #3
  store i32 1, ptr %retval, align 4
  br label %return

if.end31:                                         ; preds = %__sigbits.exit
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %return

return:                                           ; preds = %if.end31, %if.then30, %if.then21, %if.then16, %if.then11, %if.then7, %if.then3, %if.then
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define internal void @alarm_handler(i32 noundef %signo, ptr noundef %info, ptr noundef %context) #0 {
entry:
  %signo.addr = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  store i32 %signo, ptr %signo.addr, align 4
  store ptr %info, ptr %info.addr, align 8
  store ptr %context, ptr %context.addr, align 8
  %0 = load ptr, ptr %context.addr, align 8
  %1 = load i32, ptr %signo.addr, align 4
  %2 = load ptr, ptr %info.addr, align 8
  %si_signo = getelementptr inbounds %struct.__siginfo, ptr %2, i32 0, i32 0
  %3 = load i32, ptr %si_signo, align 8
  %4 = load ptr, ptr %info.addr, align 8
  %si_value = getelementptr inbounds %struct.__siginfo, ptr %4, i32 0, i32 7
  %5 = load i32, ptr %si_value, align 8
  %6 = load ptr, ptr %info.addr, align 8
  %si_code = getelementptr inbounds %struct.__siginfo, ptr %6, i32 0, i32 2
  %7 = load i32, ptr %si_code, align 8
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.8, i32 noundef %1, i32 noundef %3, i32 noundef %5, i32 noundef %7)
  ret void
}

declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: cold
declare void @perror(ptr noundef) #2

declare i32 @sighold(i32 noundef) #1

declare i32 @printf(ptr noundef, ...) #1

declare i32 @raise(i32 noundef) #1

declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
