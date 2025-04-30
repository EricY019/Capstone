; ModuleID = './code/015-21469sigchld.c'
source_filename = "./code/015-21469sigchld.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %__signo.addr.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %mask = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %mask, align 4
  %call = call i32 @sigprocmask(i32 noundef 1, ptr noundef null, ptr noundef %mask)
  %0 = load i32, ptr %mask, align 4
  store i32 20, ptr %__signo.addr.i, align 4
  %1 = load i32, ptr %__signo.addr.i, align 4
  %cmp.i = icmp sgt i32 %1, 32
  br i1 %cmp.i, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %entry
  br label %__sigbits.exit

cond.false.i:                                     ; preds = %entry
  %2 = load i32, ptr %__signo.addr.i, align 4
  %sub.i = sub nsw i32 %2, 1
  %shl.i = shl i32 1, %sub.i
  br label %__sigbits.exit

__sigbits.exit:                                   ; preds = %cond.true.i, %cond.false.i
  %cond.i = phi i32 [ 0, %cond.true.i ], [ %shl.i, %cond.false.i ]
  %and = and i32 %0, %cond.i
  %cmp = icmp ne i32 %and, 0
  br i1 %cmp, label %if.else, label %if.then

if.then:                                          ; preds = %__sigbits.exit
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %__sigbits.exit
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

declare i32 @sigprocmask(i32 noundef, ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 1}
!3 = !{i32 7, !"frame-pointer", i32 1}
!4 = !{!"Homebrew clang version 19.1.4"}
