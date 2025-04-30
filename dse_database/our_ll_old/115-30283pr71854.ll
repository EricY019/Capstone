; ModuleID = './code/115-30283pr71854.c'
source_filename = "./code/115-30283pr71854.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@f = global i8 1, align 1
@c = global i32 0, align 4
@d = global i16 0, align 2
@b = global i32 0, align 4
@a = global i8 0, align 1
@e = global [8 x i32] zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define signext i16 @foo(i16 noundef signext %x) #0 {
entry:
  %x.addr = alloca i16, align 2
  store i16 %x, ptr %x.addr, align 2
  %0 = load i16, ptr %x.addr, align 2
  %conv = sext i16 %0 to i32
  %cmp = icmp sge i32 %conv, 2
  br i1 %cmp, label %cond.true, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i16, ptr %x.addr, align 2
  %conv2 = sext i16 %1 to i32
  %2 = load i32, ptr @c, align 4
  %shr = ashr i32 %conv2, %2
  %tobool = icmp ne i32 %shr, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false, %entry
  %3 = load i16, ptr %x.addr, align 2
  %conv3 = sext i16 %3 to i32
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %4 = load i16, ptr %x.addr, align 2
  %conv4 = sext i16 %4 to i32
  %5 = load i32, ptr @c, align 4
  %shl = shl i32 %conv4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %shl, %cond.false ]
  %conv5 = trunc i32 %cond to i16
  ret i16 %conv5
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  br label %while.cond

while.cond:                                       ; preds = %for.end, %entry
  %0 = load i8, ptr @f, align 1
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i16 0, ptr @d, align 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i16, ptr @d, align 2
  %conv = sext i16 %1 to i32
  %cmp = icmp sle i32 %conv, 7
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr @b, align 4
  %shr = ashr i32 7, %2
  %tobool2 = icmp ne i32 %shr, 0
  br i1 %tobool2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %3 = load i8, ptr @a, align 1
  %conv3 = sext i8 %3 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %4 = load i8, ptr @a, align 1
  %conv4 = sext i8 %4 to i32
  %5 = load i32, ptr @b, align 4
  %shl = shl i32 %conv4, %5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv3, %cond.true ], [ %shl, %cond.false ]
  %conv5 = trunc i32 %cond to i8
  store i8 %conv5, ptr @f, align 1
  %6 = load i8, ptr @f, align 1
  %conv6 = sext i8 %6 to i16
  %call = call signext i16 @foo(i16 noundef signext %conv6)
  %conv7 = sext i16 %call to i32
  %7 = load i16, ptr @d, align 2
  %idxprom = sext i16 %7 to i64
  %arrayidx = getelementptr inbounds [8 x i32], ptr @e, i64 0, i64 %idxprom
  store i32 %conv7, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %cond.end
  %8 = load i16, ptr @d, align 2
  %inc = add i16 %8, 1
  store i16 %inc, ptr @d, align 2
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  br label %while.cond, !llvm.loop !7

while.end:                                        ; preds = %while.cond
  ret i32 0
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
