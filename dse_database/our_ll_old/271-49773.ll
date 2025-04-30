; ModuleID = './code/271-49773.c'
source_filename = "./code/271-49773.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @gcd(i32 noundef %a, i32 noundef %b) #0 {
entry:
  %a.addr = alloca i32, align 4
  %b.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4
  store i32 %b, ptr %b.addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %b.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %a.addr, align 4
  store i32 %1, ptr %tmp, align 4
  %2 = load i32, ptr %b.addr, align 4
  store i32 %2, ptr %a.addr, align 4
  %3 = load i32, ptr %tmp, align 4
  %4 = load i32, ptr %b.addr, align 4
  %rem = srem i32 %3, %4
  store i32 %rem, ptr %b.addr, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  %5 = load i32, ptr %a.addr, align 4
  ret i32 %5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %count = alloca i32, align 4
  %d = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %count, align 4
  store i32 2, ptr %d, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %d, align 4
  %cmp = icmp sle i32 %0, 12000
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %d, align 4
  %div = sdiv i32 %1, 3
  %add = add nsw i32 %div, 1
  store i32 %add, ptr %n, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %n, align 4
  %3 = load i32, ptr %d, align 4
  %rem = srem i32 %3, 2
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond1
  %4 = load i32, ptr %d, align 4
  %div3 = sdiv i32 %4, 2
  br label %cond.end

cond.false:                                       ; preds = %for.cond1
  %5 = load i32, ptr %d, align 4
  %div4 = sdiv i32 %5, 2
  %add5 = add nsw i32 %div4, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %div3, %cond.true ], [ %add5, %cond.false ]
  %cmp6 = icmp slt i32 %2, %cond
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %cond.end
  %6 = load i32, ptr %d, align 4
  %7 = load i32, ptr %n, align 4
  %call = call i32 @gcd(i32 noundef %6, i32 noundef %7)
  %cmp8 = icmp eq i32 %call, 1
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %8 = load i32, ptr %count, align 4
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %count, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %n, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr %n, align 4
  br label %for.cond1, !llvm.loop !7

for.end:                                          ; preds = %cond.end
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, ptr %d, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %d, align 4
  br label %for.cond, !llvm.loop !8

for.end12:                                        ; preds = %for.cond
  %11 = load i32, ptr %count, align 4
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11)
  %12 = load i32, ptr %retval, align 4
  ret i32 %12
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
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
