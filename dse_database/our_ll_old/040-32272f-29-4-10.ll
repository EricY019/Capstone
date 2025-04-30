; ModuleID = './code/040-32272f-29-4-10.c'
source_filename = "./code/040-32272f-29-4-10.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%union.u = type { %struct.sss }
%struct.sss = type { i64 }

@u = internal global %union.u zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %conv = sext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr @u, i64 0, i64 %idxprom
  store i8 0, ptr %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %bf.load = load i64, ptr @u, align 4
  %bf.clear = and i64 %bf.load, -536870912
  %bf.set = or i64 %bf.clear, 536870911
  store i64 %bf.set, ptr @u, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc10, %for.end
  %3 = load i32, ptr %i, align 4
  %conv3 = sext i32 %3 to i64
  %cmp4 = icmp ult i64 %conv3, 8
  br i1 %cmp4, label %for.body6, label %for.end12

for.body6:                                        ; preds = %for.cond2
  %4 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [8 x i8], ptr @u, i64 0, i64 %idxprom7
  %5 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %5 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv9)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body6
  %6 = load i32, ptr %i, align 4
  %inc11 = add nsw i32 %6, 1
  store i32 %inc11, ptr %i, align 4
  br label %for.cond2, !llvm.loop !7

for.end12:                                        ; preds = %for.cond2
  %call13 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %bf.load14 = load i64, ptr @u, align 4
  %bf.clear15 = and i64 %bf.load14, -64424509441
  %bf.set16 = or i64 %bf.clear15, 64424509440
  store i64 %bf.set16, ptr @u, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc26, %for.end12
  %7 = load i32, ptr %i, align 4
  %conv18 = sext i32 %7 to i64
  %cmp19 = icmp ult i64 %conv18, 8
  br i1 %cmp19, label %for.body21, label %for.end28

for.body21:                                       ; preds = %for.cond17
  %8 = load i32, ptr %i, align 4
  %idxprom22 = sext i32 %8 to i64
  %arrayidx23 = getelementptr inbounds [8 x i8], ptr @u, i64 0, i64 %idxprom22
  %9 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %9 to i32
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv24)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body21
  %10 = load i32, ptr %i, align 4
  %inc27 = add nsw i32 %10, 1
  store i32 %inc27, ptr %i, align 4
  br label %for.cond17, !llvm.loop !8

for.end28:                                        ; preds = %for.cond17
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  %bf.load30 = load i64, ptr @u, align 4
  %bf.clear31 = and i64 %bf.load30, -70300024700929
  %bf.set32 = or i64 %bf.clear31, 70300024700928
  store i64 %bf.set32, ptr @u, align 4
  store i32 0, ptr %i, align 4
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc42, %for.end28
  %11 = load i32, ptr %i, align 4
  %conv34 = sext i32 %11 to i64
  %cmp35 = icmp ult i64 %conv34, 8
  br i1 %cmp35, label %for.body37, label %for.end44

for.body37:                                       ; preds = %for.cond33
  %12 = load i32, ptr %i, align 4
  %idxprom38 = sext i32 %12 to i64
  %arrayidx39 = getelementptr inbounds [8 x i8], ptr @u, i64 0, i64 %idxprom38
  %13 = load i8, ptr %arrayidx39, align 1
  %conv40 = zext i8 %13 to i32
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv40)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body37
  %14 = load i32, ptr %i, align 4
  %inc43 = add nsw i32 %14, 1
  store i32 %inc43, ptr %i, align 4
  br label %for.cond33, !llvm.loop !9

for.end44:                                        ; preds = %for.cond33
  %call45 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
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
!9 = distinct !{!9, !6}
