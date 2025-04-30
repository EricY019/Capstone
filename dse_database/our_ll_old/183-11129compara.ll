; ModuleID = './code/183-11129compara.c'
source_filename = "./code/183-11129compara.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

%union.arrange = type { double }

@one = global %union.arrange { double 1.900000e-300 }, align 8
@two = global %union.arrange { double 0x7FF0000000000000 }, align 8
@.str = private unnamed_addr constant [6 x i8] c"%2.2x\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 7, ptr %x, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %x, align 4
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %x, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [8 x i8], ptr @one, i64 0, i64 %idxprom
  %2 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %2 to i32
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %x, align 4
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %x, align 4
  br label %for.cond, !llvm.loop !5

for.end:                                          ; preds = %for.cond
  %call1 = call i32 @putchar(i32 noundef 10)
  store i32 7, ptr %x, align 4
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc10, %for.end
  %4 = load i32, ptr %x, align 4
  %cmp3 = icmp sgt i32 %4, -1
  br i1 %cmp3, label %for.body5, label %for.end12

for.body5:                                        ; preds = %for.cond2
  %5 = load i32, ptr %x, align 4
  %idxprom6 = sext i32 %5 to i64
  %arrayidx7 = getelementptr inbounds [8 x i8], ptr @two, i64 0, i64 %idxprom6
  %6 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv8)
  br label %for.inc10

for.inc10:                                        ; preds = %for.body5
  %7 = load i32, ptr %x, align 4
  %dec11 = add nsw i32 %7, -1
  store i32 %dec11, ptr %x, align 4
  br label %for.cond2, !llvm.loop !7

for.end12:                                        ; preds = %for.cond2
  %call13 = call i32 @putchar(i32 noundef 10)
  ret i32 0
}

declare i32 @printf(ptr noundef, ...) #1

declare i32 @putchar(i32 noundef) #1

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
