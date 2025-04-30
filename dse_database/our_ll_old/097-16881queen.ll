; ModuleID = './code/097-16881queen.c'
source_filename = "./code/097-16881queen.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@tot = global i32 0, align 4
@n = global i32 8, align 4
@nc = global i32 0, align 4
@C = global [50 x i32] zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @search(i32 noundef %cur) #0 {
entry:
  %cur.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %cur, ptr %cur.addr, align 4
  %0 = load i32, ptr @nc, align 4
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @nc, align 4
  %1 = load i32, ptr %cur.addr, align 4
  %2 = load i32, ptr @n, align 4
  %cmp = icmp eq i32 %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc24, %if.then
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr @n, align 4
  %cmp1 = icmp slt i32 %3, %4
  br i1 %cmp1, label %for.body, label %for.end26

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %add = add nsw i32 %5, 1
  store i32 %add, ptr %j, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4
  %7 = load i32, ptr @n, align 4
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %8 = load i32, ptr %i, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [50 x i32], ptr @C, i64 0, i64 %idxprom
  %9 = load i32, ptr %arrayidx, align 4
  %10 = load i32, ptr %j, align 4
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds [50 x i32], ptr @C, i64 0, i64 %idxprom5
  %11 = load i32, ptr %arrayidx6, align 4
  %cmp7 = icmp eq i32 %9, %11
  br i1 %cmp7, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body4
  %12 = load i32, ptr %i, align 4
  %13 = load i32, ptr %i, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds [50 x i32], ptr @C, i64 0, i64 %idxprom8
  %14 = load i32, ptr %arrayidx9, align 4
  %sub = sub nsw i32 %12, %14
  %15 = load i32, ptr %j, align 4
  %16 = load i32, ptr %j, align 4
  %idxprom10 = sext i32 %16 to i64
  %arrayidx11 = getelementptr inbounds [50 x i32], ptr @C, i64 0, i64 %idxprom10
  %17 = load i32, ptr %arrayidx11, align 4
  %sub12 = sub nsw i32 %15, %17
  %cmp13 = icmp eq i32 %sub, %sub12
  br i1 %cmp13, label %if.then22, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %18 = load i32, ptr %i, align 4
  %19 = load i32, ptr %i, align 4
  %idxprom15 = sext i32 %19 to i64
  %arrayidx16 = getelementptr inbounds [50 x i32], ptr @C, i64 0, i64 %idxprom15
  %20 = load i32, ptr %arrayidx16, align 4
  %add17 = add nsw i32 %18, %20
  %21 = load i32, ptr %j, align 4
  %22 = load i32, ptr %j, align 4
  %idxprom18 = sext i32 %22 to i64
  %arrayidx19 = getelementptr inbounds [50 x i32], ptr @C, i64 0, i64 %idxprom18
  %23 = load i32, ptr %arrayidx19, align 4
  %add20 = add nsw i32 %21, %23
  %cmp21 = icmp eq i32 %add17, %add20
  br i1 %cmp21, label %if.then22, label %if.end

if.then22:                                        ; preds = %lor.lhs.false14, %lor.lhs.false, %for.body4
  br label %if.end37

if.end:                                           ; preds = %lor.lhs.false14
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %24 = load i32, ptr %j, align 4
  %inc23 = add nsw i32 %24, 1
  store i32 %inc23, ptr %j, align 4
  br label %for.cond2, !llvm.loop !5

for.end:                                          ; preds = %for.cond2
  br label %for.inc24

for.inc24:                                        ; preds = %for.end
  %25 = load i32, ptr %i, align 4
  %inc25 = add nsw i32 %25, 1
  store i32 %inc25, ptr %i, align 4
  br label %for.cond, !llvm.loop !7

for.end26:                                        ; preds = %for.cond
  %26 = load i32, ptr @tot, align 4
  %inc27 = add nsw i32 %26, 1
  store i32 %inc27, ptr @tot, align 4
  br label %if.end37

if.else:                                          ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc34, %if.else
  %27 = load i32, ptr %i, align 4
  %28 = load i32, ptr @n, align 4
  %cmp29 = icmp slt i32 %27, %28
  br i1 %cmp29, label %for.body30, label %for.end36

for.body30:                                       ; preds = %for.cond28
  %29 = load i32, ptr %i, align 4
  %30 = load i32, ptr %cur.addr, align 4
  %idxprom31 = sext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds [50 x i32], ptr @C, i64 0, i64 %idxprom31
  store i32 %29, ptr %arrayidx32, align 4
  %31 = load i32, ptr %cur.addr, align 4
  %add33 = add nsw i32 %31, 1
  call void @search(i32 noundef %add33)
  br label %for.inc34

for.inc34:                                        ; preds = %for.body30
  %32 = load i32, ptr %i, align 4
  %inc35 = add nsw i32 %32, 1
  store i32 %inc35, ptr %i, align 4
  br label %for.cond28, !llvm.loop !8

for.end36:                                        ; preds = %for.cond28
  br label %if.end37

if.end37:                                         ; preds = %if.then22, %for.end36, %for.end26
  ret void
}

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @search(i32 noundef 0)
  %0 = load i32, ptr @tot, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %0)
  %1 = load i32, ptr @nc, align 4
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %1)
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
!8 = distinct !{!8, !6}
