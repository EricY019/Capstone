; ModuleID = './code/074-12869email.c'
source_filename = "./code/074-12869email.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4
  store ptr %argv, ptr %argv.addr, align 8
  store i32 0, ptr %j, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %j, align 4
  %1 = load i32, ptr %argc.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %k, align 4
  %3 = load i32, ptr %argc.addr, align 4
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %j, align 4
  %5 = load i32, ptr %k, align 4
  %cmp4 = icmp sgt i32 %4, %5
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body3
  %6 = load i32, ptr %j, align 4
  %tobool = icmp ne i32 %6, 0
  br i1 %tobool, label %if.then, label %lor.lhs.false

cond.false:                                       ; preds = %for.body3
  %7 = load i32, ptr %k, align 4
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.false, %cond.true
  %8 = load i32, ptr %j, align 4
  %tobool6 = icmp ne i32 %8, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %cond.false, %cond.true
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %9 = load i32, ptr %k, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %10 = load i32, ptr %j, align 4
  %inc8 = add nsw i32 %10, 1
  store i32 %inc8, ptr %j, align 4
  br label %for.cond, !llvm.loop !7

for.end9:                                         ; preds = %for.cond
  %11 = load i32, ptr %retval, align 4
  ret i32 %11
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
