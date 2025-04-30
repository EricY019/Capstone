; ModuleID = './code/079-28474tst_pxt1.c'
source_filename = "./code/079-28474tst_pxt1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x%03X, \00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %pxt = alloca [4096 x i32], align 4
  %pxd = alloca [4096 x i32], align 4
  %cvx = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc19, %entry
  %0 = load i32, ptr %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end21

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc16, %for.body
  %1 = load i32, ptr %j, align 4
  %cmp2 = icmp slt i32 %1, 16
  br i1 %cmp2, label %for.body3, label %for.end18

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %k, align 4
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %2 = load i32, ptr %k, align 4
  %cmp5 = icmp slt i32 %2, 16
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %i, align 4
  %mul = mul nsw i32 %3, 16
  %4 = load i32, ptr %j, align 4
  %add = add nsw i32 %mul, %4
  %mul7 = mul nsw i32 %add, 16
  %5 = load i32, ptr %k, align 4
  %add8 = add nsw i32 %mul7, %5
  store i32 %add8, ptr %l, align 4
  %6 = load i32, ptr %l, align 4
  %7 = load i32, ptr %l, align 4
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds [4096 x i32], ptr %pxt, i64 0, i64 %idxprom
  store i32 %6, ptr %arrayidx, align 4
  %8 = load i32, ptr %i, align 4
  %9 = load i32, ptr %i, align 4
  %mul9 = mul nsw i32 %8, %9
  %10 = load i32, ptr %j, align 4
  %11 = load i32, ptr %j, align 4
  %mul10 = mul nsw i32 %10, %11
  %add11 = add nsw i32 %mul9, %mul10
  %12 = load i32, ptr %k, align 4
  %13 = load i32, ptr %k, align 4
  %mul12 = mul nsw i32 %12, %13
  %add13 = add nsw i32 %add11, %mul12
  %14 = load i32, ptr %l, align 4
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [4096 x i32], ptr %pxd, i64 0, i64 %idxprom14
  store i32 %add13, ptr %arrayidx15, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %15 = load i32, ptr %k, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %k, align 4
  br label %for.cond4, !llvm.loop !5

for.end:                                          ; preds = %for.cond4
  br label %for.inc16

for.inc16:                                        ; preds = %for.end
  %16 = load i32, ptr %j, align 4
  %inc17 = add nsw i32 %16, 1
  store i32 %inc17, ptr %j, align 4
  br label %for.cond1, !llvm.loop !7

for.end18:                                        ; preds = %for.cond1
  br label %for.inc19

for.inc19:                                        ; preds = %for.end18
  %17 = load i32, ptr %i, align 4
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, ptr %i, align 4
  br label %for.cond, !llvm.loop !8

for.end21:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc53, %for.end21
  %18 = load i32, ptr %i, align 4
  %cmp23 = icmp slt i32 %18, 4096
  br i1 %cmp23, label %for.body24, label %for.end55

for.body24:                                       ; preds = %for.cond22
  %19 = load i32, ptr %i, align 4
  %add25 = add nsw i32 %19, 1
  store i32 %add25, ptr %j, align 4
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc50, %for.body24
  %20 = load i32, ptr %j, align 4
  %cmp27 = icmp slt i32 %20, 4096
  br i1 %cmp27, label %for.body28, label %for.end52

for.body28:                                       ; preds = %for.cond26
  %21 = load i32, ptr %j, align 4
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [4096 x i32], ptr %pxd, i64 0, i64 %idxprom29
  %22 = load i32, ptr %arrayidx30, align 4
  %23 = load i32, ptr %i, align 4
  %idxprom31 = sext i32 %23 to i64
  %arrayidx32 = getelementptr inbounds [4096 x i32], ptr %pxd, i64 0, i64 %idxprom31
  %24 = load i32, ptr %arrayidx32, align 4
  %cmp33 = icmp slt i32 %22, %24
  br i1 %cmp33, label %if.then, label %if.end

if.then:                                          ; preds = %for.body28
  %25 = load i32, ptr %i, align 4
  %idxprom34 = sext i32 %25 to i64
  %arrayidx35 = getelementptr inbounds [4096 x i32], ptr %pxt, i64 0, i64 %idxprom34
  %26 = load i32, ptr %arrayidx35, align 4
  store i32 %26, ptr %k, align 4
  %27 = load i32, ptr %j, align 4
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [4096 x i32], ptr %pxt, i64 0, i64 %idxprom36
  %28 = load i32, ptr %arrayidx37, align 4
  %29 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %29 to i64
  %arrayidx39 = getelementptr inbounds [4096 x i32], ptr %pxt, i64 0, i64 %idxprom38
  store i32 %28, ptr %arrayidx39, align 4
  %30 = load i32, ptr %k, align 4
  %31 = load i32, ptr %j, align 4
  %idxprom40 = sext i32 %31 to i64
  %arrayidx41 = getelementptr inbounds [4096 x i32], ptr %pxt, i64 0, i64 %idxprom40
  store i32 %30, ptr %arrayidx41, align 4
  %32 = load i32, ptr %i, align 4
  %idxprom42 = sext i32 %32 to i64
  %arrayidx43 = getelementptr inbounds [4096 x i32], ptr %pxd, i64 0, i64 %idxprom42
  %33 = load i32, ptr %arrayidx43, align 4
  store i32 %33, ptr %k, align 4
  %34 = load i32, ptr %j, align 4
  %idxprom44 = sext i32 %34 to i64
  %arrayidx45 = getelementptr inbounds [4096 x i32], ptr %pxd, i64 0, i64 %idxprom44
  %35 = load i32, ptr %arrayidx45, align 4
  %36 = load i32, ptr %i, align 4
  %idxprom46 = sext i32 %36 to i64
  %arrayidx47 = getelementptr inbounds [4096 x i32], ptr %pxd, i64 0, i64 %idxprom46
  store i32 %35, ptr %arrayidx47, align 4
  %37 = load i32, ptr %k, align 4
  %38 = load i32, ptr %j, align 4
  %idxprom48 = sext i32 %38 to i64
  %arrayidx49 = getelementptr inbounds [4096 x i32], ptr %pxd, i64 0, i64 %idxprom48
  store i32 %37, ptr %arrayidx49, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body28
  br label %for.inc50

for.inc50:                                        ; preds = %if.end
  %39 = load i32, ptr %j, align 4
  %inc51 = add nsw i32 %39, 1
  store i32 %inc51, ptr %j, align 4
  br label %for.cond26, !llvm.loop !9

for.end52:                                        ; preds = %for.cond26
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %40 = load i32, ptr %i, align 4
  %inc54 = add nsw i32 %40, 1
  store i32 %inc54, ptr %i, align 4
  br label %for.cond22, !llvm.loop !10

for.end55:                                        ; preds = %for.cond22
  store i32 0, ptr %i, align 4
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc65, %for.end55
  %41 = load i32, ptr %i, align 4
  %cmp57 = icmp slt i32 %41, 4096
  br i1 %cmp57, label %for.body58, label %for.end67

for.body58:                                       ; preds = %for.cond56
  %42 = load i32, ptr %i, align 4
  %tobool = icmp ne i32 %42, 0
  br i1 %tobool, label %land.lhs.true, label %if.end61

land.lhs.true:                                    ; preds = %for.body58
  %43 = load i32, ptr %i, align 4
  %and = and i32 %43, 7
  %tobool59 = icmp ne i32 %and, 0
  br i1 %tobool59, label %if.end61, label %if.then60

if.then60:                                        ; preds = %land.lhs.true
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str)
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %land.lhs.true, %for.body58
  %44 = load i32, ptr %i, align 4
  %idxprom62 = sext i32 %44 to i64
  %arrayidx63 = getelementptr inbounds [4096 x i32], ptr %pxt, i64 0, i64 %idxprom62
  %45 = load i32, ptr %arrayidx63, align 4
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %45)
  br label %for.inc65

for.inc65:                                        ; preds = %if.end61
  %46 = load i32, ptr %i, align 4
  %inc66 = add nsw i32 %46, 1
  store i32 %inc66, ptr %i, align 4
  br label %for.cond56, !llvm.loop !11

for.end67:                                        ; preds = %for.cond56
  %47 = load i32, ptr %retval, align 4
  ret i32 %47
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
!9 = distinct !{!9, !6}
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
