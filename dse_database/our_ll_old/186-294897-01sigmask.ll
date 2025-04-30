; ModuleID = './code/186-294897-01sigmask.c'
source_filename = "./code/186-294897-01sigmask.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [12 x i8] c"signal ...\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"over!\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @handle(i32 noundef %s) #0 {
entry:
  %s.addr = alloca i32, align 4
  store i32 %s, ptr %s.addr, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %__signo.addr.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %num = alloca i32, align 4
  %i = alloca i32, align 4
  %sigs = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %num, align 4
  store i32 0, ptr %i, align 4
  store i32 0, ptr %sigs, align 4
  store i32 2, ptr %__signo.addr.i, align 4
  %0 = load i32, ptr %__signo.addr.i, align 4
  %cmp.i = icmp sgt i32 %0, 32
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  br label %__sigbits.exit

cond.false.i:                                     ; preds = %entry
  %1 = load i32, ptr %__signo.addr.i, align 4
  %sub.i = sub nsw i32 %1, 1
  %shl.i = shl i32 1, %sub.i
  br label %__sigbits.exit

__sigbits.exit:                                   ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ 0, %cond.true.i ], [ %shl.i, %cond.false.i ]
  %2 = load i32, ptr %sigs, align 4
  %or = or i32 %2, %cond.i
  store i32 %or, ptr %sigs, align 4
  %call1 = call ptr @signal(i32 noundef 2, ptr noundef @handle)
  %call2 = call i32 @sigprocmask(i32 noundef 1, ptr noundef %sigs, ptr noundef null)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %__sigbits.exit
  %3 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %3, 10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4
  %5 = load i32, ptr %num, align 4
  %add = add nsw i32 %5, %4
  store i32 %add, ptr %num, align 4
  %call3 = call i32 @"\01_sleep"(i32 noundef 1)
  %6 = load i32, ptr %num, align 4
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %num, align 4
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %8)
  %call6 = call i32 @sigprocmask(i32 noundef 2, ptr noundef %sigs, ptr noundef null)
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  ret i32 0
}

declare ptr @signal(i32 noundef, ptr noundef) #1

declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) #1

declare i32 @"\01_sleep"(i32 noundef) #1

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
