; ModuleID = './code/267-27432trapkid.c'
source_filename = "./code/267-27432trapkid.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%struct.sigaction = type { %union.__sigaction_u, i32, i32 }
%union.__sigaction_u = type { ptr }

@__stderrp = external global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"starting kid\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"unblocking SIGTRAP\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"block failed\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"kid exiting\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %__signo.addr.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ss = alloca i32, align 4
  %sa = alloca %struct.sigaction, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  %0 = load ptr, ptr @__stderrp, align 8
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str) #4
  %call1 = call i32 @"\01_sleep"(i32 noundef 5)
  %1 = load ptr, ptr @__stderrp, align 8
  %call2 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef @.str.1) #4
  store i32 0, ptr %ss, align 4
  store i32 5, ptr %__signo.addr.i, align 4
  %2 = load i32, ptr %__signo.addr.i, align 4
  %cmp.i = icmp sgt i32 %2, 32
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  br label %__sigbits.exit

cond.false.i:                                     ; preds = %entry
  %3 = load i32, ptr %__signo.addr.i, align 4
  %sub.i = sub nsw i32 %3, 1
  %shl.i = shl i32 1, %sub.i
  br label %__sigbits.exit

__sigbits.exit:                                   ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ 0, %cond.true.i ], [ %shl.i, %cond.false.i ]
  %4 = load i32, ptr %ss, align 4
  %or = or i32 %4, %cond.i
  store i32 %or, ptr %ss, align 4
  %call4 = call i32 @sigprocmask(i32 noundef 2, ptr noundef %ss, ptr noundef null)
  %cmp = icmp eq i32 -1, %call4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %__sigbits.exit
  call void @perror(ptr noundef @.str.2) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %__sigbits.exit
  %call5 = call i32 @"\01_sleep"(i32 noundef 5)
  %5 = load ptr, ptr @__stderrp, align 8
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %5, ptr noundef @.str.3) #4
  %6 = load i32, ptr %retval, align 4
  ret i32 %6
}

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

declare i32 @"\01_sleep"(i32 noundef) #2

declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: cold
declare void @perror(ptr noundef) #3

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #3 = { cold "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #4 = { nounwind }
attributes #5 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
