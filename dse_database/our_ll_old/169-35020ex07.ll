; ModuleID = './code/169-35020ex07.c'
source_filename = "./code/169-35020ex07.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [10 x i8] c"%d -> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %nprime = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %prime = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %nprime, align 4
  store i32 0, ptr %prime, align 4
  store i32 3, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = load i32, ptr %nprime, align 4
  %cmp = icmp slt i32 %0, 10001
  br i1 %cmp, label %for.body, label %for.end11

for.body:                                         ; preds = %for.cond
  store i32 2, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4
  %2 = load i32, ptr %i, align 4
  %cmp2 = icmp slt i32 %1, %2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %j, align 4
  %rem = srem i32 %3, %4
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  br label %for.end

if.end:                                           ; preds = %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %j, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %j, align 4
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %if.then, %for.cond1
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr %i, align 4
  %cmp5 = icmp eq i32 %6, %7
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %for.end
  %8 = load i32, ptr %i, align 4
  store i32 %8, ptr %prime, align 4
  %9 = load i32, ptr %nprime, align 4
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, ptr %nprime, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %for.end
  br label %for.inc9

for.inc9:                                         ; preds = %if.end8
  %10 = load i32, ptr %i, align 4
  %inc10 = add nsw i32 %10, 1
  store i32 %inc10, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end11:                                        ; preds = %for.cond
  %11 = load i32, ptr %nprime, align 4
  %12 = load i32, ptr %prime, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %11, i32 noundef %12)
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
