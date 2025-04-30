; ModuleID = './code/195-3921test_tableau.c'
source_filename = "./code/195-3921test_tableau.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128-Fn32"
target triple = "arm64-apple-macosx14.0.0"

@.str = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable(sync)
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %N = alloca i32, align 4
  %saved_stack = alloca ptr, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 10, ptr %N, align 4
  %0 = load i32, ptr %N, align 4
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  store ptr %2, ptr %saved_stack, align 8
  %vla = alloca i32, i64 %1, align 4
  store i64 %1, ptr %__vla_expr0, align 8
  store i32 0, ptr %i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %i, align 4
  %4 = load i32, ptr %N, align 4
  %cmp = icmp slt i32 %3, %4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load i32, ptr %i, align 4
  %idxprom = sext i32 %5 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4
  %6 = load i32, ptr %i, align 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %i, align 4
  br label %while.cond1

while.cond1:                                      ; preds = %while.body3, %while.end
  %7 = load i32, ptr %i, align 4
  %8 = load i32, ptr %N, align 4
  %cmp2 = icmp slt i32 %7, %8
  br i1 %cmp2, label %while.body3, label %while.end15

while.body3:                                      ; preds = %while.cond1
  %9 = load i32, ptr %N, align 4
  %10 = load i32, ptr %i, align 4
  %sub = sub nsw i32 %9, %10
  %sub4 = sub nsw i32 %sub, 1
  %idxprom5 = sext i32 %sub4 to i64
  %arrayidx6 = getelementptr inbounds i32, ptr %vla, i64 %idxprom5
  %11 = load i32, ptr %arrayidx6, align 4
  %12 = load i32, ptr %i, align 4
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %vla, i64 %idxprom7
  store i32 %11, ptr %arrayidx8, align 4
  %13 = load i32, ptr %N, align 4
  %14 = load i32, ptr %i, align 4
  %sub9 = sub nsw i32 %13, %14
  %sub10 = sub nsw i32 %sub9, 1
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds i32, ptr %vla, i64 %idxprom11
  %15 = load i32, ptr %arrayidx12, align 4
  %inc13 = add nsw i32 %15, 1
  store i32 %inc13, ptr %arrayidx12, align 4
  %16 = load i32, ptr %i, align 4
  %inc14 = add nsw i32 %16, 1
  store i32 %inc14, ptr %i, align 4
  br label %while.cond1, !llvm.loop !7

while.end15:                                      ; preds = %while.cond1
  store i32 0, ptr %i, align 4
  br label %while.cond16

while.cond16:                                     ; preds = %while.body18, %while.end15
  %17 = load i32, ptr %i, align 4
  %cmp17 = icmp slt i32 %17, 10
  br i1 %cmp17, label %while.body18, label %while.end22

while.body18:                                     ; preds = %while.cond16
  %18 = load i32, ptr %i, align 4
  %idxprom19 = sext i32 %18 to i64
  %arrayidx20 = getelementptr inbounds i32, ptr %vla, i64 %idxprom19
  %19 = load i32, ptr %arrayidx20, align 4
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %19)
  %20 = load i32, ptr %i, align 4
  %inc21 = add nsw i32 %20, 1
  store i32 %inc21, ptr %i, align 4
  br label %while.cond16, !llvm.loop !8

while.end22:                                      ; preds = %while.cond16
  store i32 0, ptr %retval, align 4
  %21 = load ptr, ptr %saved_stack, align 8
  call void @llvm.stackrestore.p0(ptr %21)
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #1

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #1

attributes #0 = { noinline nounwind optnone ssp uwtable(sync) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }
attributes #1 = { nocallback nofree nosync nounwind willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+altnzcv,+ccdp,+ccidx,+complxnum,+crc,+dit,+dotprod,+flagm,+fp-armv8,+fp16fml,+fptoint,+fullfp16,+jsconv,+lse,+neon,+pauth,+perfmon,+predres,+ras,+rcpc,+rdm,+sb,+sha2,+sha3,+specrestrict,+ssbs,+v8.1a,+v8.2a,+v8.3a,+v8.4a,+v8a,+zcm,+zcz" }

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
