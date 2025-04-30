; ModuleID = './code/281-16822pr69067.c'
source_filename = "./code/281-16822pr69067.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@a1 = global i32 0, align 4
@c1 = global i32 0, align 4
@kt = global i32 0, align 4
@aa = global [2 x i32] zeroinitializer, align 4
@cr = global i32 0, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @ce() #0 {
entry:
  %g8 = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end10, %entry
  %0 = load i32, ptr @a1, align 4
  %cmp = icmp slt i32 %0, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %g8, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i32, ptr %g8, align 4
  %cmp1 = icmp slt i32 %1, 3
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr @c1, align 4
  %cmp2 = icmp ne i32 %2, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr @kt, align 4
  %4 = load i32, ptr @a1, align 4
  %mul = mul nsw i32 %4, 2
  %idxprom = sext i32 %mul to i64
  %arrayidx = getelementptr inbounds [2 x i32], ptr @aa, i64 0, i64 %idxprom
  store i32 %3, ptr %arrayidx, align 4
  store i32 %3, ptr @cr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %g8, align 4
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %g8, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  store i32 0, ptr @c1, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc8, %for.end
  %6 = load i32, ptr @c1, align 4
  %cmp4 = icmp slt i32 %6, 2
  br i1 %cmp4, label %for.body5, label %for.end10

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, ptr @cr, align 4
  %8 = load i32, ptr @c1, align 4
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [2 x i32], ptr @aa, i64 0, i64 %idxprom6
  store i32 %7, ptr %arrayidx7, align 4
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %9 = load i32, ptr @c1, align 4
  %inc9 = add nsw i32 %9, 1
  store i32 %inc9, ptr @c1, align 4
  br label %for.cond3, !llvm.loop !7

for.end10:                                        ; preds = %for.cond3
  %10 = load i32, ptr @a1, align 4
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr @a1, align 4
  br label %while.cond, !llvm.loop !8

while.end:                                        ; preds = %while.cond
  ret i32 0
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 @ce()
  ret i32 %call
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
!8 = distinct !{!8, !6}
