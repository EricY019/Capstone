; ModuleID = './code/177-3105converse1.c'
source_filename = "./code/177-3105converse1.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define void @converse(i32 noundef %N, i32 noundef %r) #0 {
entry:
  %N.addr = alloca i32, align 4
  %r.addr = alloca i32, align 4
  %array = alloca [200 x i32], align 4
  %top = alloca i32, align 4
  store i32 %N, ptr %N.addr, align 4
  store i32 %r, ptr %r.addr, align 4
  store i32 -1, ptr %top, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %N.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %N.addr, align 4
  %2 = load i32, ptr %r.addr, align 4
  %rem = srem i32 %1, %2
  %3 = load i32, ptr %top, align 4
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %top, align 4
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [200 x i32], ptr %array, i64 0, i64 %idxprom
  store i32 %rem, ptr %arrayidx, align 4
  %4 = load i32, ptr %N.addr, align 4
  %5 = load i32, ptr %r.addr, align 4
  %div = sdiv i32 %4, %5
  store i32 %div, ptr %N.addr, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body2, %while.end
  %6 = load i32, ptr %top, align 4
  %cmp = icmp ne i32 %6, -1
  br i1 %cmp, label %while.body2, label %while.end5

while.body2:                                      ; preds = %while.cond1
  %7 = load i32, ptr %top, align 4
  %dec = add nsw i32 %7, -1
  store i32 %dec, ptr %top, align 4
  %idxprom3 = sext i32 %7 to i64
  %arrayidx4 = getelementptr inbounds [200 x i32], ptr %array, i64 0, i64 %idxprom3
  %8 = load i32, ptr %arrayidx4, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %8)
  br label %while.cond1, !llvm.loop !7

while.end5:                                       ; preds = %while.cond1
  ret void
}

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %N = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 1025, ptr %N, align 4
  store i32 2, ptr %r, align 4
  %0 = load i32, ptr %N, align 4
  %1 = load i32, ptr %r, align 4
  call void @converse(i32 noundef %0, i32 noundef %1)
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  ret i32 0
}

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
